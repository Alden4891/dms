<?php
class user extends CI_Controller {

public function __construct() {
    parent::__construct();
    // $this->load->library('form_validation');

}

  public function login(){
      $this->load->view('user/login');
  }

  public function authenticate() {
    // Load the LDAP authentication model
    $this->load->model('ldap_auth_model');
    $login_data = $this->input->post();

    //verify login
    if ($this->ldap_auth_model->ldap_auth($login_data['username'],$login_data['password']) === false) {
      
      //login failed!
      $data['username'] = $login_data['username'];
      $data['password'] = '';
      $data['status'] = "login_failed";
      $data['alert'] = $this->session->flashdata('login_failed');
      $this->load->view('login',$data);

    }else{
      // print_r($this->session->userdata());
      //access granted!
      redirect(site_url(),'refresh');

    }
  }

}
