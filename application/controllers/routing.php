<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class routing extends CI_Controller {
    public function __construct() {
        parent::__construct();

		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

		$this->load->model("Gmail_model");
		$this->load->model('Documents_model');

    }

    public function index(){
    	$this->listing();
    }
    
	public function listing($tag = ''){

		$data['ctlr_name'] = $this->router->fetch_class();
		$data['open_menu'] = 'document';
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
		$this->load->view('document/routing');
		$this->load->view('document/jsloader.php',$data);
		$this->load->view('templates/footer');
	}

	public function send(){

		$form_data = (object) $this->input->post();
		$dataSet = $this->Documents_model->get_upload_listing($form_data->doc_id);

		//create a new array containing attachments
		$arr_attachments = [];
		foreach ($dataSet as $item) {
		    $arr_attachments[] = FCPATH.'uploads/'.$item->filename;
		}
		
		print(json_encode(['result'=>'success']));
		return;

		//send email
		$message_id = $this->Gmail_model->send_email($form_data->emails, $form_data->routing_subject, $form_data->message, $arr_attachments) 
					  or die(json_encode(['result'=>'failed','error'=>'Email send failed','message_id'=>0]));

		//save the email transaction to database
		$data = array(
		    'DOC_ID' => $form_data->doc_id,
		    'DATE_ROUTE' => date('Y-m-d H:i:s'),
		    'SUBJECT' => $form_data->routing_subject,
		    'MESSAGE' => $form_data->message,
		    'RECEPIENT_EMAIL' => implode(',', $form_data->emails),
		    'GMAIL_MESSAGE_ID' => $message_id,
		    'RSTATUS' => 1 //[0=>'draft',1=>'sent', 2=>'with_replies',3=>'closed']
		);
		$this->db->insert('tbl_routes', $data) or die(json_encode(['result'=>'failed','error'=>'An error occurred while saving routing information in database','message_id'=>0]));

		# RETURN RESULT
		print(json_encode(['result'=>'success','message_id'=>$message_id]));

	}
	
	public function open($message_id){

	}

	public function get_recepient_response($message_id){
		// code...
	}

	


}
