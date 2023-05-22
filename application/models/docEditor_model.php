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
        
        $this->load->database();

        $ds_participants = $this->db->select('`ID`,`NAME`')->order_by('`NAME` ASC')->get('lib_employees')->result();
        $ds_obsu = $this->db->get('tbl_obsu')->result();


		$this->drn = "

                            <div class=\"row\" >
                               <div class=\"col-lg-6\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\"><strong>DRN</strong></span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"DRN\" name=\"DRN\">
                                  </div>                              
                               </div>
                               <div class=\"col-lg-3\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"DATE_POSTED\" name=\"DATE_POSTED\">
                                  </div>                               
                                </div>
                               <div class=\"col-lg-3\">
                                  <div class=\"input-group mb-3\">

                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">TIME</span>
                                     </div>
                                     <input type=\"time\" class=\"form-control\" placeholder=\"\" id=\"TIME_POSTED\" name=\"TIME_POSTED\">
                                  </div>                               
                                </div>
                            </div>

		";

		$this->obsu = "
                            <div class=\"row\">
                                 <div class=\"col-lg-9\">


                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"DOCUMENT_EDITOR\" style=\"min-width:120px;\">OSBU</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"OBSU\" name=\"OBSU\">
                                        <option value=\"1\" selected>PANTAWID</option>
                                      </select>
                                    </div>
                                </div>

                                 <div class=\"col-lg-3\">
                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"DOCUMENT_EDITOR\">STAT.</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"STATUS\" name=\"STATUS\">
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
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"SUBJECT\" name=\"SUBJECT\">
                                  </div>                              
                               </div>
                            </div>
      ";

      $this->requester = "
                            <div class=\"row\">
                                 <div class=\"col-lg-12\">
                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"DOCUMENT_EDITOR\" style=\"min-width:120px;\">REQUESTER</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"STATUS\" name=\"HANDLER\">
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
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"END_USERS\" name=\"END_USERS\">
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
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"VENUE\" name=\"VENUE\">
                                  </div>

                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\">AMOUNT</span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"AMOUNT\" name=\"AMOUNT\">
                                  </div>

                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\">PARTICIPANTS</span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"PARTICIPANTS\" name=\"PARTICIPANTS\">
                                  </div>
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\">TARGET</span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"DATE_TARGET\" name=\"DATE_TARGET\">
                                  </div> 
                                </div>
                                <div class=\"col-lg-6\">
                                    BREAKDOWN OF EXPENSES
                                    <textarea style=\"height: 176px; width: 100%;\" class=\"form-control\" id=\"EXP_COMPUTATION\" name=\"EXP_COMPUTATION\"></textarea>
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
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"DATE_REVIEWED\" name=\"DATE_REVIEWED\">
                                  </div> 
                                </div>
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE INITIALED</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"DATE_INITIALED\" name=\"DATE_INITIALED\">
                                  </div> 
                                </div>
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE RECEIVED</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"DATE_RECEIVED_COPY\" name=\"DATE_RECEIVED_COPY\">
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
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"DATE_ENDORSED\" name=\"DATE_ENDORSED\">
                                  </div> 
                                </div>
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE CSMS RECEIVED</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"DATE_CSMS_RECEIVED\" name=\"DATE_CSMS_RECEIVED\">
                                  </div> 
                                </div>
                                <div class=\"col-lg-4\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">TURNAROUND TIME</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"TIME_TURNAROUND\" name=\"TIME_TURNAROUND\">
                                  </div> 
                                </div>
                            </div>

      ";
      $this->released_by = "

                            <div class=\"row\">
                                <div class=\"col-lg-8\">

                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"DOCUMENT_EDITOR\">RELEASED BY</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"RELEASED_BY\" name=\"RELEASED_BY\">
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
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\"  id=\"DATE_RELEASED\" name=\"DATE_RELEASED\">
                                  </div> 
                                </div>
                            </div>

      ";
      $this->signed_by = "
                            <div class=\"row\">
                                <div class=\"col-lg-6\">
                                    <div class=\"input-group mb-3\">
                                      <div class=\"input-group-prepend\">
                                        <label class=\"input-group-text\" for=\"DOCUMENT_EDITOR\">SIGNED BY</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"SIGNED_BY\" name=\"SIGNED_BY\">
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
                                        <label class=\"input-group-text\" for=\"DOCUMENT_EDITOR\">RECEIVED BY</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"RECEIVED_BY\" name=\"RECEIVED_BY\">
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