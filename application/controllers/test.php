<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include_once APPPATH . "libraries/vendor/autoload.php";
class test extends CI_Controller {
    private $google_client;
    public function __construct() {
        parent::__construct();
        

    }

    public function index(){
        $this->load->library('config');


    }


}
