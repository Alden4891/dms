<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class audittrail extends CI_Controller {
    public function __construct() {
        parent::__construct();

		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

    }

    public function index(){
    	$this->listing();
    }
    
	public function listing($tag = ''){
		$data['open_menu'] = 'archive';
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
		// $this->load->view('archive/listing');
		$this->load->view('templates/footer');
	}

	public function add($data){
		
	}

	


}
