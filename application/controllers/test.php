<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class test extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }



    public function data(){
        print(FCPATH.'attachments');
       

    }
    
	public function index(){
        // $this->load->model("Google_contacts_model");
        // $data = $this->Google_contacts_model->fetch_contacts();
        // print_r($data);        

        $to_string = implode(",",['aaa','bbbb']);
        print($to_string);
    }

    //GMAIL IS WORKING 2023-07-30
    public function gmail(){
        $this->load->model('Gmail_model');
        $data = $this->Gmail_model->get_mails();
        print("<pre>");
        print_r($data);
        print("<pre>");
    }

    public function getthread()
    {
        
        $this->load->model('Gmail_model');
        $data = $this->Gmail_model->get_email_by_threadID("18a30bf178551479");
        print("<pre>");
        print_r($data);
        print("<pre>");

    }

}
