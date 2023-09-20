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

	public function test(){
      $query1 = $this->db->select(
          '`tbl_documents`.`ID` as DOC_ID
          ,`tbl_documents`.`DRN`
          ,`tbl_documents`.`SUBJECT`
          ,"CATALOGUE" AS "SOURCE"
          ,CONCAT(`users`.`firstname`,\' \',`users`.`middlename`,\' \',`users`.`lastname`) AS \'DELETED_BY\'
          ,`tbl_documents`.`DELETE_DATE`')
      ->from('`db_dms`.`tbl_documents`')
      ->join('`db_dms`.`users`', '(`tbl_documents`.`DELETED_BY` = `users`.`user_id`)')
      ->get();
      $result1 = $query1->result();

      $query2 = $this->db->select(
          '`tbl_routes`.`ID` as DOC_ID
          ,`tbl_documents`.`DRN`
          ,`tbl_documents`.`SUBJECT`
          ,"ROUTES" AS "SOURCE"
          ,CONCAT(`users`.`firstname`,\' \',`users`.`middlename`,\' \',`users`.`lastname`) AS \'DELETED_BY\'
          ,`tbl_routes`.`DELETED_DATE` as DELETE_DATE')
      ->from('`db_dms`.`tbl_routes`')
      ->join('`db_dms`.`users`', '(`tbl_routes`.`DELETED_BY` = `users`.`user_id`)')
      ->join('`db_dms`.`tbl_documents`', '(`tbl_routes`.`DOC_ID` = `tbl_documents`.`ID`)')
      ->get();
      $result2 = $query2->result();
      $mergedArray = array_merge($result1, $result2);
      
      print('<pre>');
      print_r($mergedArray);
      print('</pre>');
	

	
	}

	


}
