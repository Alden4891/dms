<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class dashboard extends CI_Controller {
    public function __construct() {
        parent::__construct();
         $this->load->model('Ldap_auth_model');

        //redirect to login if session expired
		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

    }
    
	public function index(){
		print_r($this->session->userdata());
		$data['open_menu'] = 'dashboard';
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
		$this->load->view('index');
		$this->load->view('templates/footer');
	}
}
