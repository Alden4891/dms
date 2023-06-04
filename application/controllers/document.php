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

		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
		$this->load->view('document/listing');

		$this->load->view('document/listing_doc_editor_modal');
		$this->load->view('document/listing_doc_route_modal');
		$this->load->view('document/listing_doc_archive_modal');
		$this->load->view('document/listing_js');


		$this->load->view('templates/footer');
	}

	public function data($doc_id) {
		$this->load->model('Documents_model');
		$data = $this->Documents_model->get_document($doc_id);
		print_r(json_encode($data));
		// 386
	}

	public function save(){

		$form_data = $this->input->post();
		
		// Separate the specified elements into a separate array
		$restrictions = array(
		    'opt-public' => $form_data['opt-public'],
		    'opt-internal-use-only' => $form_data['opt-internal-use-only'],
		    'opt-urgent' => $form_data['opt-urgent'],
		    'opt-confidential' => $form_data['opt-confidential'],
		    'opt-restricted' => $form_data['opt-restricted'],
		    'opt-top-secret' => $form_data['opt-top-secret'],
		    'opt-dc-only' => $form_data['opt-dc-only'],
		    'opt-hold-doc' => $form_data['opt-hold-doc'],
		    'opt-allow-other-obsu' => $form_data['opt-allow-other-obsu']
		);

		// Remove the specified elements from $form_data
		unset(
		    $form_data['opt-public'],
		    $form_data['opt-internal-use-only'],
		    $form_data['opt-urgent'],
		    $form_data['opt-confidential'],
		    $form_data['opt-restricted'],
		    $form_data['opt-top-secret'],
		    $form_data['opt-dc-only'],
		    $form_data['opt-hold-doc'],
		    $form_data['opt-allow-other-obsu']
		);

		//convert to decstring
		$restrictions_bin = implode('', $restrictions);
		$restrictions_dec = bindec($restrictions_bin);
		$form_data['RESTRICTIONS'] = $restrictions_dec;

        // Save the data to the database or perform any other required operations
        $this->load->model('Documents_model');
		$doc_id = $this->Documents_model->save_document($form_data);

		//return result
		print_r(json_encode(array('doc_id'=>$doc_id)));
	}

    public function upload($doc_id) {

    	$fileName = "$doc_id";

	    // Delete existing files
	    $filePattern = "./uploads/$doc_id*"; // Specify the pattern to match the filenames
	    $existingFiles = glob($filePattern); // Find files matching the pattern

	    foreach ($existingFiles as $file) {
	        unlink($file); // Delete each file
	    }

        if(isset($_FILES['attached-files']) && !empty($_FILES['attached-files']['name'][0])) {
            // Configure upload preferences
            $config['upload_path'] = './uploads/';
            $config['allowed_types'] = 'pdf|jpg|jpeg|png';
            $config['max_size'] = 5000; // 5MB
            // $config['file_name'] = 'images_'; // Prefix for file names

            // $this->load->library('upload', $config);
            // $this->upload->initialize($config);
            $files = $_FILES['attached-files'];

            // Upload each file
            $fileNames = array();
            $this->load->library('upload', $config);
            for ($i = 0; $i < count($files['name']); $i++) {
                $_FILES['attached-files']['name'] = $files['name'][$i];
                $_FILES['attached-files']['type'] = $files['type'][$i];
                $_FILES['attached-files']['tmp_name'] = $files['tmp_name'][$i];
                $_FILES['attached-files']['error'] = $files['error'][$i];
                $_FILES['attached-files']['size'] = $files['size'][$i];

		        // Generate custom file name
		        $extension = pathinfo($_FILES['attached-files']['name'], PATHINFO_EXTENSION);
		        $fileName = $doc_id . '(' . ($i + 1) . ').' . $extension;
		        $config['file_name'] = $fileName;

				$this->upload->initialize($config);

                if ($this->upload->do_upload('attached-files')) {
                    $uploadData = $this->upload->data();
                    $fileNames[] = $uploadData['file_name'];


			        // Save file details to the database
			        $data = array(
			            'doc_id' => $doc_id,
			            'filename' => $fileName,
			            'size' => $_FILES['attached-files']['size'],
			            'mime_type' => $_FILES['attached-files']['type'],
			            'datetime_uploaded' => date('Y-m-d H:i:s')
			        );

			        // Save the data to the MySQL table 'tbl_uploads'
			        $this->db->insert('tbl_uploads', $data);

                } else {
                    // Handle upload errors if needed
                    $error = $this->upload->display_errors();
                    echo $error;
                    return;
                }
            }




            // Return a response 
            $response = array('status' => 'success', 'fileNames' => $fileNames);
            echo json_encode($response);

        } else {
            // Handle the case when no files are uploaded
            $response = array('status' => 'error', 'message' => 'No files uploaded.');
            echo json_encode($response);
        }


    }


	// public function save(){
		
	// 	$form_data = $this->input->post();
	// 	$form_data['DATE_POSTED'] = $form_data['DATE_POSTED'].' '.$form_data['TIME_POSTED'];

	// 	if (array_key_exists('TIME_POSTED', $form_data)) {
	// 	    unset($form_data['TIME_POSTED']);
	// 	}

	// 	$result = $this->Documents_model->save_document($form_data);
	// }	


	
	public function archive(){

	}


}
