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
		$data['open_menu'] = 'routing';
		$data['route_listing'] = $this->get_list();

		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
		$this->load->view('document/routing');
		$this->load->view('document/jsloader.php');
		$this->load->view('templates/footer');
    }
    
    private function check_cache($message_id) {
		$json_path=FCPATH."cache/gmail_responses/$message_id.json";
		return file_exists($json_path);
    }

	public function get_list(){

		$query = $this->db->select(
							"`tbl_routes`.`ID`
							,`tbl_documents`.`DRN`
							,`tbl_routes`.`GMAIL_MESSAGE_ID`
							,`tbl_routes`.`SUBJECT`
							,`tbl_routes`.`DATE_ROUTE`
							,`tbl_routes`.`RSTATUS`
							, `tbl_routes`.`DOC_ID`
							, CONCAT(TIMESTAMPDIFF(DAY, DATE_ROUTE, NOW()),' day(s) ',TIMESTAMPDIFF(HOUR, DATE_ROUTE, NOW()) % 24,' hr(s)') as AGE
							, TIMESTAMPDIFF(DAY, DATE_ROUTE, NOW()) as 'DAY_DURATION'
							")
							->from('`db_dms`.`tbl_routes`')
							->join('`db_dms`.`tbl_documents`', '(`tbl_routes`.`DOC_ID` = `tbl_documents`.`ID`)')
							->get();
		$result = $query->result();

		$table_content = "";
		foreach ($result as $row) {


			//PREPARE TABLE
			$table_content .= "
              <tr doc_id=$row->DOC_ID >
                  <td>$row->DRN</td>
                  <td>$row->SUBJECT</td>
                  <td>$row->DATE_ROUTE</td>
                  <td>$row->AGE</td>
                  <td>sample2</td>
                  <td>
                  	".($row->DAY_DURATION >= 7 ? "<i class='fa fa-flag fa-sm' style='color: #ff0000;'></i>":"" )."
                  	".($this->check_cache($row->GMAIL_MESSAGE_ID) ? "<i class='fa fa-registered'></i>":"" )."

                  </td>
                  <td>
                    <div class='dropdown btn-sm'>
                      <button  style='width: 100%;' class='btn btn-secondary dropdown-toggle btn-sm' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                       <i class='fas fa-file-prescription'></i> Select
                      </button>
                      <div class='dropdown-menu' aria-labelledby='dropdownMenuButton'>
                        <a class='dropdown-item' href='#' id='btn_route_view_response'><i class='fas fa-edit'></i> View Responses</a>
                        <a class='dropdown-item' href='#' id='btn_route_send_followup'><i class='fas fa-route'></i> Send a followup response</a>

                        <a class='dropdown-item' href='#' id='btn_route_send_followup'><i class='fas fa-route'></i> Force Update</a>
                        <a class='dropdown-item' href='#' id='btn_route_send_followup'><i class='fas fa-route'></i> Mark Done</a>
                        <a class='dropdown-item' href='#' id='btn_route_send_followup'><i class='fas fa-route'></i> Delete</a>


                      </div>
                    </div>

                  </td>
              </tr>
			";
		}
		return $table_content;
		// print_r(json_encode(['rows'=>$table_content]));


	}

    public function get_recepient_response($message_id){

        // $message_id = "18a45215b0bc153e";
        $json_path=FCPATH."cache/gmail_responses/$message_id.json";

        // LOAD CACHE IF EXISTS
        $cache_date = new DateTime("1900-01-01 12:00:00"); //initialize datetime 
        $currentDate = new DateTime();
        $response_data = array();
        if (file_exists($json_path)) {
            $jsonData = file_get_contents($json_path);
            $response_data = json_decode($jsonData, true); 
            $cache_date = new DateTime($response_data['date']);
        }
        $interval = $currentDate->diff($cache_date);
        $hoursDifference = $interval->h + $interval->days * 24;

        if ($hoursDifference >= 3) {
            $this->load->model('Gmail_model');
            $response_data['response'] = $this->Gmail_model->get_email_by_threadID($message_id);
            $response_data['date'] =  date('Y-m-d H:i:s');
            file_put_contents($json_path, json_encode($response_data, JSON_PRETTY_PRINT));   
        }  

        print_r($response_data); 
    }
	


}
