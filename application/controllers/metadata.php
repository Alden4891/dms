
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class metadata extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('Metadata_model');
    }
    
	public function get_dropdown_options()
	{
		if ($this->input->post() !== null) {
			$data = $this->input->post();
			$options = $this->Metadata_model->get_dropdown_options($data);
			print_r($options);
			// print($data['tableName']);

		}		

	}
}
