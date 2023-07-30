<?php

// require __DIR__ . '/../vendor/autoload.php';
require 'C:/xampp/htdocs/dms/application/libraries/vendor/autoload.php';

$client = new Google_Client();
$client->setApplicationName('Peoples API PHP');
$client->setAuthConfig('aaquinones.fo12.dswd.gov.ph.auoth.client.json');
// $client->setAuthConfig('alden.roxy.gmail.com.auoth.client.json');


$client->setAccessType('offline');
$client->setPrompt('select_account consent');
$client->setScopes(['https://www.googleapis.com/auth/contacts.readonly']);



if (file_exists('token.json')) {
    $accessToken = json_decode(file_get_contents('token.json'), true);
    if ($client->isAccessTokenExpired()) {
        $client->fetchAccessTokenWithRefreshToken($accessToken['refresh_token']);
        $accessToken = $client->getAccessToken();
        file_put_contents('token.json', json_encode($accessToken));
    }
} else {
    $authUrl = $client->createAuthUrl();
    printf("Open the following link in your browser:\n%s\n", $authUrl);
    print 'Enter verification code: ';
    $authCode = trim(fgets(STDIN));
    $accessToken = $client->fetchAccessTokenWithAuthCode($authCode);
    file_put_contents('token.json', json_encode($accessToken));
}
$client->setAccessToken($accessToken);
$service = new Google_Service_Gmail($client);