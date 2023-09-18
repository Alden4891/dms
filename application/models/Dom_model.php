<?php
class Dom_model extends CI_Model {
    public function __construct(){
        $this->load->database();
        $this->load->model('Gmail_model');
    }

    public function get_routed_ducuments_trend_viewer_data(){
        
    }

    public function get_deleted_documents_table_entries(){
      $query = $this->db->select(
          '`tbl_documents`.`ID` as DOC_ID
          ,`tbl_documents`.`DRN`
          ,`tbl_documents`.`SUBJECT`
          ,CONCAT(`users`.`firstname`,\' \',`users`.`middlename`,\' \',`users`.`lastname`) AS \'DELETED_BY\'
          ,`tbl_documents`.`DELETE_DATE`')
      ->from('`db_dms`.`tbl_documents`')
      ->join('`db_dms`.`users`', '(`tbl_documents`.`DELETED_BY` = `users`.`user_id`)')
      ->get();
      $result = $query->result();

        $table_content = "";
        foreach ($result as $row) {


            //PREPARE TABLE
            $table_content .= "
              <tr doc_id=$row->DOC_ID>
                  <td>$row->DRN</td>
                  <td>$row->SUBJECT</td>
                  <td>$row->DELETE_DATE</td>
                  <td>$row->DELETED_BY</td>
                  <td>
                    <button type=\"button\" class=\"btn btn-danger btn-xs\" id=\"restore-button\">
                      <i class=\"fas fa-undo\" ></i> Restore
                    </button>
                    <button type=\"button\" class=\"btn btn-info btn-xs\" id=\"preview\">
                      <i class=\"fas fa-eye\" ></i> View
                    </button>
                  </td>

              </tr>
            ";
        }
        return $table_content;

        
    }

    public function get_routed_documents_table_entries() {
        $query = $this->db->select(
                            "`tbl_routes`.`ID`
                            ,`tbl_documents`.`DRN`
                            ,`tbl_routes`.`GMAIL_MESSAGE_ID`
                            ,`tbl_routes`.`SUBJECT`
                            ,`tbl_routes`.`DATE_ROUTE`
                            ,`tbl_rstatus`.`STATUS`
                            ,`tbl_routes`.`RSTATUS`
                            ,`tbl_routes`.`DOC_ID`
                            ,`tbl_routes`.`FOLLOWUP_COUNT`
                            ,`tbl_routes`.`REPLY_COUNT`
                            , CONCAT(TIMESTAMPDIFF(DAY, DATE_ROUTE, NOW()),' day(s) ',TIMESTAMPDIFF(HOUR, DATE_ROUTE, NOW()) % 24,' hr(s)') as AGE
                            , TIMESTAMPDIFF(DAY, DATE_ROUTE, NOW()) as 'DAY_DURATION'
                            ")
                            ->from('`db_dms`.`tbl_routes`')
                            ->join('`db_dms`.`tbl_documents`', '(`tbl_routes`.`DOC_ID` = `tbl_documents`.`ID`)')
                            ->join('`db_dms`.`tbl_rstatus`', '(`tbl_routes`.`RSTATUS` = `tbl_rstatus`.`ID`)')
                            ->get();
        $result = $query->result();

        $table_content = "";
        $route_due = 0;
        $route_count = $query->num_rows();
        $route_responsed = 0;
        foreach ($result as $row) {

            $with_response = $this->Gmail_model->check_cache($row->GMAIL_MESSAGE_ID);
            if ($row->REPLY_COUNT > 0) {
              $route_responsed+=1;
            }
            if ($row->DAY_DURATION > 7) {
                $route_due+=1;
            }

            //PREPARE TABLE
            $table_content .= "
              <tr doc_id=$row->DOC_ID message_id='$row->GMAIL_MESSAGE_ID'>
                  <td>$row->DRN</td>
                  <td>$row->SUBJECT</td>
                  <td>$row->DATE_ROUTE</td>
                  <td>$row->AGE</td>
                  <td>$row->STATUS</td>
                  <td>
                    ".($row->DAY_DURATION >= 3 && $row->RSTATUS <> 6 ? "<i class='fa fa-flag fa-sm' style='color: #ff0000;'></i>":"" )."
                    ".($row->FOLLOWUP_COUNT > 0 && $row->RSTATUS <> 6  ? "<i class='fa fa-solid fa-feather' style='color: #0000ff;'></i>":"" )."
                    ".($row->REPLY_COUNT > 0 && $row->RSTATUS <> 6 ? "<i class='fa fa-registered'></i>":"" )."

                  </td>
                  <td>
                    <div class='dropdown btn-sm'>
                      <button  style='width: 100%;' class='btn btn-secondary dropdown-toggle btn-sm' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                       <i class='fas fa-file-prescription'></i> Select
                      </button>
                      <div class='dropdown-menu' aria-labelledby='dropdownMenuButton'>
                      
                        <a class='dropdown-item' href='#' id='btn_route_view_trend'><i class='fas fa-edit'></i> View Responses</a>
                        <a class='dropdown-item send_reply' href='#' id='btn_route_send_followup'><i class='fa fa-solid fa-feather' ></i> Send a followup response</a>

                        <a class='dropdown-item' href='#' id='btn_route_check_replies'><i class='fas fa-route'></i> Check for response</a>
                        <a class='dropdown-item' href='#' id='btn_route_mark_done'><i class='fas fa-route'></i> Mark Done</a>
                        <a class='dropdown-item' href='#' id='btn_route_delete'><i class='fas fa-route' ></i> Delete</a>


                      </div>
                    </div>

                  </td>
              </tr>
            ";
        }
        return (object) [
          'table_content'=>$table_content,
          'route_due'=>$route_due,
          'route_count'=>$route_count,
          'route_responsed'=>$route_responsed
        ];
        // print_r(json_encode(['rows'=>$table_content]));
    }
}


