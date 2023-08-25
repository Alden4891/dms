<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class routing extends CI_Controller {
    public function __construct() {
        parent::__construct();

		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

		$this->load->model("gmail_model");
		$this->load->model('Documents_model');

    }

    public function index(){
    	$this->listing();
    }
    
	public function listing($tag = ''){
		$data['open_menu'] = 'document';
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
		// $this->load->view('route/listing');
		$this->load->view('templates/footer');
	}

	public function send(){
		$form_data = (object) $this->input->post();
		$dataSet = $this->Documents_model->get_upload_listing($form_data->doc_id);

		//create a new array containing attachments
		$attachments = [];
		foreach ($dataSet as $item) {
		    $attachments[] = FCPATH.'uploads/'.$item->filename;
		}
		print_r($attachments);
		print(FCPATH.'uploads/');
		
		// send_email($to, $subject, $body, $attachments = array()){
		$this->Gmail_model->send_email(to:1, $subject, $body, $attachments);

	

		// print_r($attachments);
		



	}
	
	public function open($message_id){

	}

	public function get_recepient_response($message_id){
		// code...
	}

	


}
