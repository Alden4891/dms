<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include_once APPPATH . "libraries/vendor/autoload.php";
class test extends CI_Controller {
    private $google_client;
    public function __construct() {
        parent::__construct();
        

    }

    public function index(){
        $this->load->model('Gmail_model');
        #routing_model->get_trends_responses
        $treads = $this->Gmail_model->get_email_by_threadIDs(['18a73727f23506a5']);
        foreach ($treads as $treadID => $thread) {
            $json_path=FCPATH."cache/gmail_responses/".$treadID.".json";

            # count the number of replies
            $reply_count = array_reduce($thread, function ($carry, $entry) {
                return $carry + ($entry['senderEmail'] != 'me' ? 1 : 0);
            }, 0);

            # update replies in tbl_routes table
            $this->db->where('GMAIL_MESSAGE_ID', '234234234234234')
            ->set('REPLY_COUNT', 1234)
            ->update('tbl_routes');



            $response_data = array();
            $response_data['response'] = $thread;
            $response_data['date'] =  date('Y-m-d H:i:s');
            $response_data['reply_count'] = $reply_count;
            
            file_put_contents($json_path, json_encode($response_data, JSON_PRETTY_PRINT));   

        }
        return true;


    }

    public function indexx(){

        $json_path=FCPATH."cache/gmail_responses/18a73727f23506a5.json";


        // Read the JSON file and decode it into a PHP object
        $jsonData = file_get_contents($json_path);
        $phpObject = json_decode($jsonData);

        // Check if the JSON decoding was successful
        if ($phpObject === null && json_last_error() !== JSON_ERROR_NONE) {
            die('Error parsing JSON data');
        }

        // Now, $phpObject contains the JSON data as a PHP object
        // You can access its properties and work with the data
        $reply_count = 0;
        foreach ($phpObject->response as $response) {
            if ($response->senderEmail != 'me') {
                $reply_count+=1;
            }
        }

        print('<pre>');
        print_r($phpObject->response);
        print('</pre>');
    }

}
