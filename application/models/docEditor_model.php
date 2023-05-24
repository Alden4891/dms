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
    
    private $ds_employees;
    private $ds_obsu;
    private $ds_status;

    private $options_employees;
    private $options_obsu;
    private $options_status;

    public function __construct(){
        
        $this->load->database();

        //PREPARE OPTIONS DATASETS
        $this->ds_employees = $this->db->select('`ID`,`NAME`')->order_by('`NAME` ASC')->get('lib_employees')->result();
        $this->ds_obsu = $this->db->get('tbl_obsu')->result();
        $this->ds_status = $this->db->get('tbl_status')->result();

        //PRE-LOAD OPTIONS
        $this->options_employees = implode('', array_map(fn($employee) => "<option value='{$employee->ID}'>{$employee->NAME}</option>", $this->ds_employees));
        $this->options_obsu = implode('', array_map(fn($obsu) => "<option value='{$obsu->ID}'>{$obsu->OBSU}</option>", $this->ds_obsu));
        $this->options_status = implode('', array_map(fn($status) => "<option value='{$status->ID}'>{$status->STATUS}</option>", $this->ds_status));

		$this->drn = "

                            <div class=\"row\" >
                               <div class=\"col-lg-6\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\" style=\"min-width:120px;\"><strong>DRN</strong></span>
                                     </div>
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"DRN\" name=\"DRN\" required>
                                  </div>                              
                               </div>
                               <div class=\"col-lg-3\">
                                  <div class=\"input-group mb-3\">
                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">DATE</span>
                                     </div>
                                     <input type=\"date\" class=\"form-control\" placeholder=\"\" id=\"DATE_POSTED\" name=\"\">
                                  </div>                               
                                </div>
                               <div class=\"col-lg-3\">
                                  <div class=\"input-group mb-3\">

                                     <div class=\"input-group-prepend\">
                                        <span class=\"input-group-text\">TIME</span>
                                     </div>
                                     <input type=\"time\" class=\"form-control\" placeholder=\"\" id=\"TIME_POSTED\" name=\"\">
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
                                      <select class=\"custom-select\"  id=\"OBSU\" name=\"OBSU\" required>
                                        $this->options_obsu
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
                                        $this->options_status
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
                                     <input type=\"text\" class=\"form-control\" placeholder=\"\" id=\"SUBJECT\" name=\"SUBJECT\" required>
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
                                      <select class=\"custom-select\"  id=\"HANDLER\" name=\"HANDLER\">
                                        <option selected>Choose...</option>
                                        $this->options_employees
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
                                        $this->options_employees
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
                                        <label class=\"input-group-text\" for=\"DOCUMENT_EDITOR\" style=\"min-width:120px;\">SIGNED BY</label>
                                      </div>
                                      <select class=\"custom-select\"  id=\"SIGNED_BY\" name=\"SIGNED_BY\">
                                        <option selected>Choose...</option>
                                        $this->options_employees
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
                                        $this->options_employees
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

     public function test(){


        return $this->options_employees; 

     }
	 
    
}