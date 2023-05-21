<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class document extends CI_Controller {
    public function __construct() {
        parent::__construct();
        //redirect to login if session expired
		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

    }

    public function index(){
    	$this->listing();
    }
    
	public function listing($tag = ''){
		$this->load->model('Documents_model');

		$data['open_menu'] = 'document';
		$data['documents'] = $this->Documents_model->get_list();

		// print_r($data);
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
		$this->load->view('document/listing');
		$this->load->view('templates/footer');
	}

	public function edit($doc_id){
		
	}	

	public function upload(){

	}
	
	public function archive(){

	}


}
