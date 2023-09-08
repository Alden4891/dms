<?php
class Dom_model extends CI_Model {
    public function __construct(){
        $this->load->database();
        $this->load->model('Gmail_model');
    }

    public function get_routed_ducuments_trend_viewer_data(){
        
    }

    public function get_routed_documents_table_entries() {
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
              <tr doc_id=$row->DOC_ID message_id='$row->GMAIL_MESSAGE_ID'>
                  <td>$row->DRN</td>
                  <td>$row->SUBJECT</td>
                  <td>$row->DATE_ROUTE</td>
                  <td>$row->AGE</td>
                  <td>sample2</td>
                  <td>
                    ".($row->DAY_DURATION >= 7 ? "<i class='fa fa-flag fa-sm' style='color: #ff0000;'></i>":"" )."
                    ".($this->Gmail_model->check_cache($row->GMAIL_MESSAGE_ID) ? "<i class='fa fa-registered'></i>":"" )."

                  </td>
                  <td>
                    <div class='dropdown btn-sm'>
                      <button  style='width: 100%;' class='btn btn-secondary dropdown-toggle btn-sm' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                       <i class='fas fa-file-prescription'></i> Select
                      </button>
                      <div class='dropdown-menu' aria-labelledby='dropdownMenuButton'>
                        <a class='dropdown-item' href='#' id='btn_route_view_trend'><i class='fas fa-edit'></i> View Responses</a>
                        <a class='dropdown-item' href='#' id='btn_route_send_followup'><i class='fas fa-route'></i> Send a followup response</a>

                        <a class='dropdown-item' href='#' id='btn_route_send_followup'><i class='fas fa-route'></i> Check for response</a>
                        <a class='dropdown-item' href='#' id='btn_route_send_followup'><i class='fas fa-route'></i> Mark Done</a>
                        <a class='dropdown-item' href='#' id='btn_route_send_followup'><i class='fas fa-route' ></i> Delete</a>


                      </div>
                    </div>

                  </td>
              </tr>
            ";
        }
        return $table_content;
        // print_r(json_encode(['rows'=>$table_content]));
    }
}


