<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class document extends CI_Controller {
    public function __construct() {
        parent::__construct();
        //redirect to login if session expired
    		if(!$this->session->userdata('user_id'))
    		redirect(site_url('user/login'), 'refresh');


    		$this->load->helper('url');
    		$this->load->model('Documents_model');
    		$this->load->model('Attachment_model');
    }

    public function index(){
    	$this->listing();
    }

	public function listing($tag = ''){

		$data['open_menu'] = 'document';
		$data['documents'] = $this->Documents_model->get_list();
		$data['totals'] = (object) $this->Documents_model->get_totals();

		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
		$this->load->view('document/listing');

    	$this->load->view('document/listing_doc_route_modal'); #1
		$this->load->view('document/listing_doc_viewer_modal2'); #2
		$this->load->view('document/listing_doc_editor_modal'); #3
		$this->load->view('document/listing_doc_viewer_modal'); #4

		$this->load->view('templates/footer');

		$this->load->view('document/jsloader.php');
	}

	public function data($doc_id) {
		$data = $this->Documents_model->get_document($doc_id);
		print_r(json_encode($data));
		// 386
	}

    public function formatBytes($bytes) {
        if ($bytes < 1024) {
            return $bytes . ' bytes';
        } elseif ($bytes < 1048576) {
            return round($bytes / 1024, 2) . ' KB';
        } elseif ($bytes < 1073741824) {
            return round($bytes / 1048576, 2) . ' MB';
        } else {
            return round($bytes / 1073741824, 2) . ' GB';
        }
    }

	public function get_upload_listing($doc_id){
		$dataset = $this->Documents_model->get_upload_listing($doc_id);
		// print('<pre>');
		// print_r($dataset);
		// print('</pre>');

		$row_template = '';
		foreach($dataset as $row) {
			$doc_id = str_pad($row->id, 5, '0', STR_PAD_LEFT);
			$row_template .= "
	            <tr att_id=\"$row->id\">
	              <td style=\"\">$doc_id</td>
	              <td style=\"\">$row->filename</td>
	              <td style=\"\">".$this->formatBytes($row->size)."</td>
	              <td style=\"\">
	                <div class=\"btn-group btn-group-sm\">
	                  <a class=\"btn btn-secondary\" href=\"".site_url('document/get_document_instance/').$doc_id."\"  download >
	                    <i class=\"fa fa-download\"></i>
	                  </a>
	                  <a class=\"btn btn-secondary\" id =\"btn_document_preview\" attachment-id=$row->id>
	                    <i class=\"fa fa-eye\"></i>
	                  </a>
	                  <a type=\"button\" class=\"btn btn-secondary print_pdf\" href=\"".site_url('document/get_document_instance/').$doc_id."\">
	                    <i class=\"fa fa-print\"></i>
	                  </a>
	                  <a type=\"button\" class=\"btn btn-secondary editor-delete-attachment\">
	                    <i class=\"fa fa-trash\"></i>
	                  </a>

	                </div>
	              </td>
	            </tr>
			";
		}
		print($row_template);
	}

	public function get_document_instance($file_id) {
		//no need to return, this will load the instance of the document
		$this->Attachment_model->get_instance($file_id);
	}

	public function get_viewer_content($doc_id) {
		$attachment_list = "";
		$data = $this->db->get_where('tbl_uploads', array('doc_id' => $doc_id))->result();

		//load: 
		$default_id = 0;
		foreach ($data as $entry) {
			
			#get the 1st entry
			$default_id = ($default_id==0?$entry->id:$default_id);
			$iframe_src = site_url('document/get_document_instance/'.$entry->id);

			$attachment_list .= "
	                  <li class=\"nav-item active\">
	                    <a href=\"$iframe_src\" class=\"nav-link\" att_id=\"$entry->id\" target=\"prev_pdf2\">
	                      <i class=\"far fa-file-pdf\"></i> $entry->org_filename
	                    </a>
	                  </li>
	                  ";			
		}

		print(
			json_encode([
					'attachment_list'=>$attachment_list,
					'default_url'=>site_url('document/get_document_instance/'.$default_id),
					'file_exists'=>($default_id>0?true:false)
			])
		);


		
	}

	public function change_status(){
		$form_data = (object) $this->input->post();
		$success = $this->Documents_model->set_status($form_data);
		if ($success) {
			$status = $this->db->select('`status`')->where(array('id' => $form_data->status_id))->get('tbl_status')->row();
			return print_r(json_encode(['success'=>True, 'new_status'=>$status->status]));
		}else{
			return print_r(json_encode(['success'=>False]));
		}
	}

	public function get_attachments($doc_id) {
		$dataSet = $this->Documents_model->get_upload_listing($doc_id);
		print(json_encode($dataSet));
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
		$doc_id = $this->Documents_model->save_document($form_data);

		//return result
		print_r(json_encode(array('doc_id'=>$doc_id)));
	}

	public function delete($doc_id){
		$is_deleted = $this->Documents_model->delete($doc_id);
		if ($is_deleted) {
			print_r(json_encode(array('success'=>true))); 
		}else{
			print_r(json_encode(array('success'=>false))); 
		}
	}

	public function delete_attachment($attachment_id){
		$is_deleted = $this->Attachment_model->delete($attachment_id);
		if ($is_deleted) {
			print_r(json_encode(array('success'=>true))); 
		}else{
			print_r(json_encode(array('success'=>false))); 
		}
	}


    public function upload($doc_id) {

    	$fileName = "doc_$doc_id"."_a";

	    // Delete existing files
	    $filePattern = "./uploads/$fileName*"; // Specify the pattern to match the filenames
	    $existingFiles = glob($filePattern); // Find files matching the pattern
        $this->db->where('`doc_id`',$doc_id);
        $this->db->delete('tbl_uploads');

	    foreach ($existingFiles as $file) {
	        unlink($file); // Delete each file
	    }

        if(isset($_FILES['attached-files']) && !empty($_FILES['attached-files']['name'][0])) {
            // Configure upload preferences
            $config['upload_path'] = './uploads/';
            $config['allowed_types'] = 'pdf';
            $config['max_size'] = 10000; // 5MB
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
		        $org_filename = pathinfo($_FILES['attached-files']['name'], PATHINFO_BASENAME);
		        // $fileName = "doc_$doc_id"."_a" . '(' . ($i + 1) . ').' . $extension;
		        $fileName = uniqid("file-", false) . "-" . $doc_id . $extension;
		        
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
			            'datetime_uploaded' => date('Y-m-d H:i:s'),
			            'org_filename' => $org_filename
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
