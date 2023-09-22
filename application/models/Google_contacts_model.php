<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include_once APPPATH . "libraries/vendor/autoload.php";

class Google_contacts_model extends CI_Model {
    
    private $google_client;

    public function __construct() {
        parent::__construct();


        $client_secret = $this->config->item('contacts_client_secret');
        $client_token = $this->config->item('contacts_token');

        $this->google_client = new Google_Client();
        $this->google_client->setApplicationName('APP NAME');
        $this->google_client->setAuthConfig(FCPATH . 'assets/google/clients/contacts/' . $client_secret);
        $this->google_client->setAccessType('offline');
        $this->google_client->setPrompt('select_account consent');

        // Define the scope for accessing the user's contacts
        $this->google_client->setScopes([
            'https://www.googleapis.com/auth/contacts.readonly'
        ]);

        // Load previously authorized credentials from a file.
        $tokenPath = FCPATH . 'assets/google/clients/contacts/' . $client_token;
        if (file_exists($tokenPath)) {
            $accessToken = json_decode(file_get_contents($tokenPath), true);
            $this->google_client->setAccessToken($accessToken);
        }

        // If there is no previous token or it's expired.
        if ($this->google_client->isAccessTokenExpired()) {
            // Refresh the token if possible, else fetch a new one.
            if ($this->google_client->getRefreshToken()) {
                $this->google_client->fetchAccessTokenWithRefreshToken($this->google_client->getRefreshToken());
            } else {
                $authUrl = $this->google_client->createAuthUrl();
                // Redirect the user to Google's authorization page to authorize the application.
                header("Location: $authUrl");
                // exit;
            }
            // Save the token to a file.
            if (!file_exists(dirname($tokenPath))) {
                mkdir(dirname($tokenPath), 0700, true);
            }
            file_put_contents($tokenPath, json_encode($this->google_client->getAccessToken()));
        }
    }


    
    public function fetch_contacts() {
        $people_service = new Google_Service_PeopleService($this->google_client);
        $results = $people_service->people_connections->listPeopleConnections('people/me', 
            ['personFields' => 'names,emailAddresses']
        );

        $contacts = array();
        foreach ($results as $person) {
            if (!empty($person->getEmailAddresses()) && !empty($person->getNames())) {
                $contact = array(
                    'display_name' => $person->getNames()[0]->getDisplayName(),
                    'email' => $person->getEmailAddresses()[0]->getValue()
                );
                $contacts[] = $contact;
            }
        }
        return $contacts;
    }
}
