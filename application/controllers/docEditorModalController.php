<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class docEditorModalController extends CI_Controller {

   private $htx;

   public function __construct() {
      parent::__construct();
   
      //redirect to login if session expired
		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

      //load models
      $this->load->model('docEditor_model');

    }
	
    

   public function getFormConent(){
		$data = $this->input->post();

      // // if ($data['doctype']==DOC_TYPE_MEMO) {
         
      // // }else{

      // // }

      switch ($data['doctype']) {
         case DOC_TYPE_MEMO:
             $this->htx = $this->docEditor_model->get_memo();
             break;
         case DOC_TYPE_ES:
             $this->htx = $this->docEditor_model->get_es();
             break;
         case DOC_TYPE_TRAVEL:
             $this->htx = $this->docEditor_model->get_travel();
             break;
         case DOC_TYPE_COMMU:
             $this->htx = $this->docEditor_model->get_commu();
             break;
         case DOC_TYPE_PROPOSAL:
             $this->htx = $this->docEditor_model->get_proposal();
             break;
         case DOC_TYPE_MEETING:
             $this->htx = $this->docEditor_model->get_meeting();
             break;
         case DOC_TYPE_DATA_REQUEST:
             $this->htx = $this->docEditor_model->get_data_request();
             break;
         default:
            $this->htx = '';
      }



		print_r(json_encode(array('dom'=>$this->htx)));
   

	}


}
