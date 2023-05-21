<?php
class docEditor_model extends CI_Model {

	private $htx;
	
	private $drn;
	private $obsu;
	private $doc_title;
	private $requester;
	private $end_users;
	private $venue;
	private $date_reviewed;
	private $date_endorsed;
	private $released_by;
	private $signed_by;

    public function __construct(){
		


		$this->drn = "

                            <div class=\"row\" >
                               <div class=\"col-lg-6\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\"><strong>DRN</strong></span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"fe_drn\" name=\"fe_drn\">
                                  </div>                              
                               </div>
                               <div class=\"col-lg-3\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"fe_date\" name=\"fe_date\">
                                  </div>                               
                                </div>
                               <div class=\"col-lg-3\">
                                  <div class=\"input-group mb-3\">

                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">TIME</span>
                                     </div>
                                     <input type=\"time\" class=\"form-control\" placeholder=\"\" id=\"fe_time\" name=\"fe_time\">
                                  </div>                               
                                </div>
                            </div>

		";

		$this->obsu = "
                            <div class=\"row\">
                                 <div class=\"col-lg-9\">


                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"doctype_selection\" style=\"min-width:120px;\">OSBU</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"fe_osbu\" name=\"fe_osbu\">
                                        <option value=\"1\" selected>PANTAWID</option>
                                      </select>
                                    </div>
                                </div>

                                 <div class=\"col-lg-3\">
                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"doctype_selection\">STAT.</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"fe_status\" name=\"fe_status\">
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

      $this->doc_title = "
                           <div class=\"row\">
                               <div class=\"col-lg-12\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\">DOC. TITLE</span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"fe_title\" name=\"fe_title\">
                                  </div>                              
                               </div>
                            </div>
      ";

      $this->requester = "
                            <div class=\"row\">


                                 <div class=\"col-lg-12\">
                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"doctype_selection\" style=\"min-width:120px;\">REQUESTER</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"fe_status\" name=\"fe_requester\">
                                        <option selected>Choose...</option>
                                        <option value=\"1\">IN-PROGRESS</option>
                                        <option value=\"2\">PENDING</option>
                                        <option value=\"3\">FORWARDED</option>
                                        <option value=\"4\">APPROVED</option>
                                        <option value=\"5\">DONE/CONDUCTED</option>
                                        <option value=\"6\">ON-HOLD</option>
                                        <option value=\"7\">CANCELLED</option>
                                        <option value=\"8\">ARCHIVED</option>
                                      </select>
                                      <span class=\"input-group-append\"><button type=\"button\" class=\"btn btn-info btn-flat\">+</button></span>
                                    </div>
                                </div>

                            </div>
      ";

      $this->end_users = "

                            <div class=\"row\">
                               <div class=\"col-lg-12\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\">END-USER</span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"fe_enduser\" name=\"fe_enduser\">
                                  </div>                              
                               </div>
                            </div>

      ";


      $this->venue = "
                            <div class=\"row\">
                                <div class=\"col-lg-6\">

                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\">VENUE</span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"fe_venue\" name=\"fe_venue\">
                                  </div>

                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\">AMOUNT</span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"fe_amount\" name=\"fe_amount\">
                                  </div>

                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\">PARTICIPANTS</span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"fe_paticipants\" name=\"fe_participants\">
                                  </div>
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\">TARGET</span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"fe_target\" name=\"fe_target\">
                                  </div> 
                                </div>
                                <div class=\"col-lg-6\">
                                    BREAKDOWN OF EXPENSES
                                    <textarea style=\"height: 176px; width: 100%;\" class=\"form-control\" id=\"fe_breakdown_exp\" name=\"fe_breakdown_exp\"></textarea>
                                </div>
                            </div>

      ";
      $this->date_reviewed = "
                          <div class=\"row\">
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE REVIEWED</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"fe_date_reviewed\" name=\"fe_date_reviewed\">
                                  </div> 
                                </div>
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE INITIALED</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"fe_date_initialed\" name=\"fe_date_initialed\">
                                  </div> 
                                </div>
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE RECEIVED</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"fe_date_received\" name=\"fe_date_received\">
                                  </div> 
                                </div>
                            </div>
  
      ";
      $this->date_endorsed = "
                            <div class=\"row\">
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE ENDORSED</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"fe_date_endorsed\" name=\"fe_date_endorsed\">
                                  </div> 
                                </div>
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE CSMS RECEIVED</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"fe_date_cmsm_received\" name=\"fe_date_cmsm_received\">
                                  </div> 
                                </div>
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">TURNAROUND TIME</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"fe_turnaround_time\" name=\"fe_turnaround_time\">
                                  </div> 
                                </div>
                            </div>

      ";
      $this->released_by = "

                            <div class=\"row\">
                                <div class=\"col-lg-8\">

                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"doctype_selection\">RELEASED BY</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"fe_released_by\" name=\"fe_released_by\">
                                        <option selected>Choose...</option>
                                        <option value=\"1\">DIVINE GRACE - M&E</option>
                                        <option value=\"2\">AAAA</option>
                                        <option value=\"3\">BBBB</option>

                                      </select>
                                    </div>


                                </div>
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE RELEASED</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\"  id=\"fe_date_released\" name=\"fe_date_released\">
                                  </div> 
                                </div>
                            </div>

      ";
      $this->signed_by = "
                            <div class=\"row\">
                                <div class=\"col-lg-6\">
                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"doctype_selection\">SIGNED BY</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"fe_signed_by\" name=\"fe_signed_by\">
                                        <option selected>Choose...</option>
                                        <option value=\"1\">DIVINE GRACE - M&E</option>
                                        <option value=\"2\">AAAA</option>
                                        <option value=\"3\">BBBB</option>
                                      </select>
                                    </div>
                                </div>
                                <div class=\"col-lg-6\">
                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"doctype_selection\">RECEIVED BY</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"fe_received_by\" name=\"fe_received_by\">
                                        <option selected>Choose...</option>
                                        <option value=\"1\">DIVINE GRACE - M&E</option>
                                        <option value=\"2\">AAAA</option>
                                        <option value=\"3\">BBBB</option>
                                      </select>
                                    </div>
                                </div>
                            </div>

      ";

	 	//LOAD DEFAULT INPUTS
	 	$this->htx .= $this->drn;
	 	$this->htx .= $this->obsu;
	 	$this->htx .= $this->doc_title;

    }



	 public function get_memo(){
	 	$this->htx .= $this->signed_by;
	 	return $this->htx;
	 }
	 public function get_es(){
	 	$this->htx .= $this->signed_by;
	 	return $this->htx;
	 }
	 public function get_travel(){
	 	$this->htx .= $this->requester;
	 	$this->htx .= $this->signed_by;
	 	return $this->htx;
	 }
	 public function get_commu(){
	 	$this->htx .= $this->requester;
	 	return $this->htx;
	 }

	 public function get_proposal(){
	 	$this->htx .= $this->requester;
	 	$this->htx .= $this->end_users;
	 	$this->htx .= $this->venue;
	 	$this->htx .= $this->date_reviewed;
	 	return $this->htx;
	 }

	 public function get_meeting(){
	 	$this->htx .= $this->end_users;
	 	$this->htx .= $this->signed_by;
	 	return $this->htx;
	 }
    
	 public function get_data_request(){
	 	$this->htx .= $this->requester;
	 	$this->htx .= $this->date_endorsed;
	 	$this->htx .= $this->released_by;
	 	$this->htx .= $this->signed_by;
	 	return $this->htx;
	 }
	 
    
}