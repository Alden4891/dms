<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class fetch extends CI_Controller {
    public function __construct() {
        parent::__construct();

		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

        $this->load->model("Routing_model");


    }

    public function route_info($message_id){
        
        $data = $route_data = $this->Routing_model->get_route_info($message_id);

        print(json_encode(
            [
                'DATE_ROUTE'=>$data->DATE_ROUTE,
                'SUBJECT'=>$data->SUBJECT,
                'RSTATUS'=>$data->RSTATUS,
                'DRN'=>$data->DRN
            ]
        ));
    }



}
