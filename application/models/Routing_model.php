<?php
class Routing_model extends CI_Model {

    public function __construct(){
        $this->load->model('Gmail_model');
        $this->load->database();
    }


    public function get_trends_responses($message_ids){
        //["18a6d3f17c0f54f3", "18a73727f23506a5"]
 
        $treads = $this->Gmail_model->get_email_by_threadIDs($message_ids);
        foreach ($treads as $treadID => $tread) {
            
            $json_path=FCPATH."cache/gmail_responses/".$treadID.".json";

            $response_data = array();
            $response_data['response'] = $tread;
            $response_data['date'] =  date('Y-m-d H:i:s');
            file_put_contents($json_path, json_encode($response_data, JSON_PRETTY_PRINT));   

        }
       return true;
    }


    public function get_trend_responses($message_id){
        //18a45215b0bc153e

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
            $response_data['response'] = $this->Gmail_model->get_email_by_threadID($message_id);
            $response_data['date'] =  date('Y-m-d H:i:s');
            file_put_contents($json_path, json_encode($response_data, JSON_PRETTY_PRINT));   
        }  
        return $response_data; 
    }

    public function get_route_info($message_id){
        // Define the query to retrieve data
        $query = $this->db->select('
             `tbl_routes`.`DATE_ROUTE`
            ,`tbl_routes`.`SUBJECT`
            ,`tbl_routes`.`MESSAGE`
            ,`tbl_routes`.`RECEPIENT_EMAIL`
            ,`tbl_routes`.`GMAIL_MESSAGE_ID`
            ,`tbl_routes`.`RSTATUS`
            ,`tbl_documents`.`DRN`')
        ->from('`db_dms`.`tbl_routes`')
        ->join('`db_dms`.`tbl_documents`', '(`tbl_routes`.`DOC_ID` = `tbl_documents`.`ID`)')
        ->group_start()
        ->where('`tbl_routes`.`GMAIL_MESSAGE_ID`',  $message_id)
        ->group_end()
        ->get();

        // Check if there are any results
        if ($query->num_rows() > 0) {
            return (object) $query->result()[0]; // Return the result as an array of objects
        } else {
            return array(); // Return an empty array if no results found
        }
    }



}