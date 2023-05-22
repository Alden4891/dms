<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class test extends CI_Controller {
    public function __construct() {
        parent::__construct();
    }

    public function index(){
    	$this->load->model('docEditor_model');
    	$data = $this->docEditor_model->test();
    	print_r($data);



    }
    
	


}
