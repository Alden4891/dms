<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class docEditorModalController extends CI_Controller {
    public function __construct() {
        parent::__construct();
        //redirect to login if session expired
		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

    }
	public function getFormConent(){
		$data = $this->input->post();
		//print_r($data);


		//drn content
		$htx_drn = "

                            <div class=\"row\" >
                               <div class=\"col-lg-6\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\"><strong>DRN</strong></span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\">
                                  </div>                              
                               </div>
                               <div class=\"col-lg-3\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\">
                                  </div>                               
                                </div>
                               <div class=\"col-lg-3\">
                                  <div class=\"input-group mb-3\">

                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">TIME</span>
                                     </div>
                                     <input type=\"time\" class=\"form-control\" placeholder=\"\">
                                  </div>                               
                                </div>
                            </div>

		";

		$htx_obsu = "
                            <div class=\"row\">
                                 <div class=\"col-lg-9\">


                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"doctype_selection\" style=\"min-width:120px;\">OSBU</label>
                                      </div>
                                      <select class=\"custom-select\" id=\"doctype_selection\">
                                        <option value=\"1\" selected>PANTAWID - DC</option>
                                        <option value=\"2\">PANTAWID - GRS</option>
                                        <option value=\"3\">PANTAWID - IPD</option>
                                        <option value=\"4\">PANTAWID - GRANTS</option>
                                        <option value=\"5\">PANTAWID - CVS</option>
                                        <option value=\"6\">PANTAWID - BDM</option>
                                        <option value=\"7\">PANTAWID - COVENGENCE/RCM</option>
                                      </select>
                                    </div>
                                </div>

                                 <div class=\"col-lg-3\">
                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"doctype_selection\">STAT.</label>
                                      </div>
                                      <select class=\"custom-select\" id=\"doctype_selection\">
                                        <option selected>Choose...</option>
                                        <option value=\"1\">IN-PROGRESS</option>
                                        <option value=\"2\">PENDING</option>
                                        <option value=\"3\">FORWARDED</option>
                                        <option value=\"3\">APPROVED</option>
                                        <option value=\"3\">DONE/CONDUCTED</option>
                                        <option value=\"3\">ON-HOLD</option>
                                        <option value=\"3\">CANCELLED</option>
                                        <option value=\"3\">ARCHIVED</option>
                                      </select>
                                    </div>
                                </div>

                            </div>
		";

		print_r(json_encode(array('dom'=>$htx_drn.$htx_obsu)));

	}


}
