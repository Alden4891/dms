<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include_once APPPATH . "libraries/vendor/autoload.php";
class test extends CI_Controller {

    public function __construct() {
        parent::__construct();
        

    }

    public function index(){


        $name_name = uniqid("file-", false) . "-" . 512 . ".pdf";

        print($name_name);

    }


}
