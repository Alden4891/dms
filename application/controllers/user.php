<?php
class user extends CI_Controller {

  public function __construct() {
      parent::__construct();
      // $this->load->library('form_validation');
      $this->load->model('User_auth_model');

  }

  public function login(){
      $this->load->view('user/login');
  }

  public function authenticate() {
    // Load the LDAP authentication model
    $login_data = $this->input->post();

    //verify login
    if ($this->User_auth_model->ldap_auth($login_data['username'],$login_data['password'])) {
      redirect(site_url(),'refresh');
    }

    //try direct authentication
    else{

      if ($this->User_auth_model->db_auth($login_data['username'],$login_data['password'])) {
        redirect(site_url(),'refresh');
      }else{
        $data['username'] = $login_data['username'];
        $data['password'] = '';
        $data['status'] = "login_failed";
        $data['alert'] = $this->session->flashdata('login_failed');
        $this->load->view('user/login',$data);        
      }

    }
  }

}
