<?php

// require __DIR__ . '/../vendor/autoload.php';
require 'C:/xampp/htdocs/ddis/application/libraries/vendor/autoload.php';

// $clientSecret = "client.secret.pantawid.fo12@dswd.gov.ph.json";
// $token = "token.pantawid.fo12@dswd.gov.ph.json";

$clientSecret = "client.secret.aaquinones.fo12@dswd.gov.ph.json";
$token = "token.aaquinones.fo12@dswd.gov.ph.json";

$client = new Google_Client();
$client->setApplicationName('Peoples API PHP');
$client->setAuthConfig($clientSecret);

$client->setAccessType('offline');
$client->setPrompt('select_account consent');
$client->setScopes(['https://www.googleapis.com/auth/contacts.readonly']);

if (file_exists($token)) {
    $accessToken = json_decode(file_get_contents($token), true);
    if ($client->isAccessTokenExpired()) {
        $client->fetchAccessTokenWithRefreshToken($accessToken['refresh_token']);
        $accessToken = $client->getAccessToken();
        file_put_contents($token, json_encode($accessToken));
    }
} else {
    $authUrl = $client->createAuthUrl();
    printf("Open the following link in your browser:\n%s\n", $authUrl);
    print 'Enter verification code: ';
    $authCode = trim(fgets(STDIN));
    $accessToken = $client->fetchAccessTokenWithAuthCode($authCode);
    file_put_contents($token, json_encode($accessToken));
}
$client->setAccessToken($accessToken);
$service = new Google_Service_Gmail($client);