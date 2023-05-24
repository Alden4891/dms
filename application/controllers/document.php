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

    public function save() {
    	$this->load->model('Documents_model');
        // Check if files are uploaded
        if(isset($_FILES['doc_files_upload']) && !empty($_FILES['doc_files_upload']['name'][0])) {
            // Configure upload preferences
            $config['upload_path'] = './uploads/';
            $config['allowed_types'] = 'pdf|jpg';
            $config['max_size'] = 5000; // 5MB
            $config['file_name'] = 'images_'; // Prefix for file names

            $this->load->library('upload', $config);

            $files = $_FILES['doc_files_upload'];

            // Upload each file
            $fileNames = array();
            for ($i = 0; $i < count($files['name']); $i++) {
                $_FILES['doc_files_upload']['name'] = $files['name'][$i];
                $_FILES['doc_files_upload']['type'] = $files['type'][$i];
                $_FILES['doc_files_upload']['tmp_name'] = $files['tmp_name'][$i];
                $_FILES['doc_files_upload']['error'] = $files['error'][$i];
                $_FILES['doc_files_upload']['size'] = $files['size'][$i];

                if ($this->upload->do_upload('doc_files_upload')) {
                    $uploadData = $this->upload->data();
                    $fileNames[] = $uploadData['file_name'];
                } else {
                    // Handle upload errors if needed
                    $error = $this->upload->display_errors();
                    echo $error;
                    return;
                }
            }

            // Process the rest of the form data
			$form_data['DATE_POSTED'] = $form_data['DATE_POSTED'].' '.$form_data['TIME_POSTED'];
			if (array_key_exists('TIME_POSTED', $form_data)) {
			    unset($form_data['TIME_POSTED']);
			}

            // Save the data to the database or perform any other required operations
			$this->Documents_model->save_document($form_data);

            // Return a response 
            $response = array('status' => 'success', 'fileNames' => $fileNames);
            echo json_encode($response);

        } else {
            // Handle the case when no files are uploaded
            $response = array('status' => 'error', 'message' => 'No files uploaded.');
            echo json_encode($response);
        }
    }


	public function save(){
		
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
