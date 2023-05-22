<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class document extends CI_Controller {
    public function __construct() {
        parent::__construct();
        //redirect to login if session expired
		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

		$this->load->helper('url');
    }

    public function index(){
    	$this->listing();
    }
    
	public function listing($tag = ''){
		
		$this->load->model('Documents_model');

		$data['open_menu'] = 'document';
		$data['documents'] = $this->Documents_model->get_list();

		// print(base_url('assets/js/listing.js'));
		// print_r($data);
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
		$this->load->view('document/listing');
		$this->load->view('templates/footer');
	}

	public function data($doc_id) {
		$this->load->model('Documents_model');
		$data = $this->Documents_model->get_document($doc_id);
		print_r(json_encode($data));
		// 386
	}

	public function save(){
		$this->load->model('Documents_model');
		$form_data = $this->input->post();
		$form_data['DATE_POSTED'] = $form_data['DATE_POSTED'].' '.$form_data['TIME_POSTED'];

		if (array_key_exists('TIME_POSTED', $form_data)) {
		    unset($form_data['TIME_POSTED']);
		}

		$result = $this->Documents_model->save_document($form_data);


	}	

	public function upload(){

	}
	
	public function archive(){

	}


}
