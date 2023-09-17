<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class test extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }



    public function test2(){
        // print(FCPATH.'attachments');
        $this->load->model('Routing_model');
        $data = $this->Routing_model->get_trends_responses(["18a6d3f17c0f54f3", "18a73727f23506a5"]);
        print('<pre>');
        print_r($data);
        print('</pre>');
    }       


    //GMAIL IS WORKING 2023-07-30
    public function gmail(){
        $this->load->model('Gmail_model');
        $data = $this->Gmail_model->get_mails();
        print("<pre>");
        print_r($data);
        print("<pre>");
    }

    public function test1(){
        $this->load->model("Gmail_model");
        $data = $this->Gmail_model->get_email_by_threadID("18a6d3f17c0f54f3");
        print('<pre>');
        print_r($data);
        print('</pre>');
    }

    public function test3(){
        $this->load->model("Routing_model");
        $data = $route_data = $this->Routing_model->get_route_info("18a6d3f17c0f54f3");
        print('<pre>');
        print_r($data);
        print('</pre>');
    }



}
