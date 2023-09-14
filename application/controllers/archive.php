<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class archive extends CI_Controller {
    public function __construct() {
        parent::__construct();

		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

		$this->load->model("Dom_model");
		$this->load->model("Documents_model");
    }

    public function index(){
    	$this->listing();
    }
    
	public function listing($tag = ''){
		$data['open_menu'] = 'document';
		$data['listing'] = $this->Dom_model->get_deleted_documents_table_entries();
 		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
		$this->load->view('document/archive');
		$this->load->view('templates/footer');
		$this->load->view('document/listing_doc_viewer_modal2'); #2
		$this->load->view('document/jsloader.php');
	}

	public function restore($doc_id){
		$is_restored = $this->Documents_model->restore($doc_id);
		if ($is_restored) {
			print_r(json_encode(array('success'=>true))); 
		}else{
			print_r(json_encode(array('success'=>false))); 
		}
		
	}

	


}
