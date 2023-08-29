<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class test extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }



    public function data(){

        print_r('[{"id":1,"name":"Juna Dela Cruz","email":"js@gmail.com"},{"id":2,"name":"John Smith","email":"john.smith@example.com"},{"id":3,"name":"Jane Doe","email":"jane.doe@example.com"},{"id":4,"name":"Michael Johnson","email":"michael.johnson@example.com"},{"id":5,"name":"Sarah Lee","email":"sarah.lee@example.com"},{"id":6,"name":"Robert Wang","email":"robert.wang@example.com"},{"id":7,"name":"Emily Kim","email":"emily.kim@example.com"},{"id":8,"name":"David Chen","email":"david.chen@example.com"},{"id":9,"name":"Lisa Nguyen","email":"lisa.nguyen@example.com"},{"id":10,"name":"Daniel Garcia","email":"daniel.garcia@example.com"}]');

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
        print_r($data);

    }

}
