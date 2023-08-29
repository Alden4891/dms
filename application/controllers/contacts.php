<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class contacts extends CI_Controller {
    public function __construct() {
        parent::__construct();

		// if(!$this->session->userdata('user_id')) redirect(site_url('user/login'), 'refresh');

		$this->load->model("Google_contacts_model");
		$this->load->database();

    }

    public function index(){
    	//load contacts views
    }

    /*FORCE UPDATE CONTACT TABLE FROM GMAIL */
    public function update(){
    	$this->load->database();
        $contacts_array = $this->Google_contacts_model->fetch_contacts(); //json_decode($data, true);
        if ($contacts_array && is_array($contacts_array)) {
            foreach ($contacts_array as $contact) {
                $data = array(
                    'display_name' => $contact['display_name'],
                    'email' => $contact['email'],
                    'date_updated' => date('Y-m-d H:i:s')
                );
                $insert_query = $this->db->insert_string('tbl_contacts', $data);
				$insert_query = str_replace('INSERT INTO','INSERT IGNORE INTO',$insert_query);
				$this->db->query($insert_query); // QUERY RUNS A SECOND TIME

            }
            print_r(['result'=>'success']);
        } else {
            print_r(['result'=>'failed']);
        }
    }

    public function fetch_list() {
        $this->db->select('email, display_name');
        $query = $this->db->get('tbl_contacts');

        $result = [];
        foreach ($query->result() as $row) {
            $result[] = [
                'value' => $row->email,
                'text' => $row->display_name
            ];
        }
        print(json_encode($result)) ;
    }




    

	


}
