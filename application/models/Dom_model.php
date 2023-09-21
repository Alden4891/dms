<?php
class Dom_model extends CI_Model {
    public function __construct(){
        $this->load->database();
        $this->load->model('Gmail_model');
        $this->load->model('Routing_model');
    }

    public function get_routed_ducuments_trend_viewer_data(){
        
    }

    public function get_deleted_documents_table_entries(){


      // $query = $this->db->select(
      //     '`tbl_documents`.`ID` as DOC_ID
      //     ,`tbl_documents`.`DRN`
      //     ,`tbl_documents`.`SUBJECT`
      //     ,CONCAT(`users`.`firstname`,\' \',`users`.`middlename`,\' \',`users`.`lastname`) AS \'DELETED_BY\'
      //     ,`tbl_documents`.`DELETE_DATE`')
      // ->from('`db_dms`.`tbl_documents`')
      // ->join('`db_dms`.`users`', '(`tbl_documents`.`DELETED_BY` = `users`.`user_id`)')
      // ->get();
      // $result = $query->result();

      # DELETED in tbl_documents
      $query1 = $this->db->select(
          '`tbl_documents`.`ID` as DOC_ID
          ,`tbl_documents`.`DRN`
          ,`tbl_documents`.`SUBJECT`
          ,"CATALOGUE" AS "SOURCE"
          ,CONCAT(`users`.`firstname`,\' \',`users`.`middlename`,\' \',`users`.`lastname`) AS \'DELETED_BY\'
          ,`tbl_documents`.`DELETE_DATE`')
      ->from('`db_dms`.`tbl_documents`')
      ->join('`db_dms`.`users`', '(`tbl_documents`.`DELETED_BY` = `users`.`user_id`)')
      ->get();
      $result1 = $query1->result();

      # DELETED in tbl_routes
      $query2 = $this->db->select(
          '`tbl_routes`.`ID` as DOC_ID
          ,`tbl_documents`.`DRN`
          ,`tbl_documents`.`SUBJECT`
          ,"ROUTES" AS "SOURCE"
          ,CONCAT(`users`.`firstname`,\' \',`users`.`middlename`,\' \',`users`.`lastname`) AS \'DELETED_BY\'
          ,`tbl_routes`.`DELETED_DATE` as DELETE_DATE')
      ->from('`db_dms`.`tbl_routes`')
      ->join('`db_dms`.`users`', '(`tbl_routes`.`DELETED_BY` = `users`.`user_id`)')
      ->join('`db_dms`.`tbl_documents`', '(`tbl_routes`.`DOC_ID` = `tbl_documents`.`ID`)')
      ->get();
      $result2 = $query2->result();

      # merge and sort (Desc) DATE DELETED
      $result = array_merge($result1, $result2);
      usort($result, function ($a, $b) {
          return strtotime($b->DELETE_DATE) - strtotime($a->DELETE_DATE);
      });

      # PREPARE TABLE
      $table_content = "";
      foreach ($result as $row) {
          //PREPARE TABLE
          $table_content .= "
            <tr doc_id='$row->DOC_ID' src='$row->SOURCE'>
                <td>$row->DRN</td>
                <td>$row->SUBJECT</td>
                <td>$row->DELETE_DATE</td>
                <td>$row->DELETED_BY</td>
                <td>$row->SOURCE</td>                
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

    private function get_routed_documents_table_row($row) {

            //FOLLOW-UP
            $follow_up_icon_color = "#FFFFFF"; 
            if ($row->FOLLOWUP_COUNT == 1 && $row->RSTATUS <> 6) {
              $follow_up_icon_color = "#00CC00"; //GREEN
            }elseif ($row->FOLLOWUP_COUNT == 2 && $row->RSTATUS <> 6) {
              $follow_up_icon_color = "#0000FF"; //BLUE
            }elseif ($row->FOLLOWUP_COUNT > 2 && $row->RSTATUS <> 6) {
              $follow_up_icon_color = "#FF0000";  //RED
            }

            //OVERDUE
            $overdue_icon_color = "#FFFFFF"; 
            if ($row->DAY_DURATION > 7 && $row->RSTATUS <> 6) {
              $overdue_icon_color = "#FF0000"; //RED
            }elseif ($row->DAY_DURATION > 5 && $row->RSTATUS <> 6) {
              $overdue_icon_color = "#0000FF"; //BLUE
            }elseif ($row->DAY_DURATION > 2 && $row->RSTATUS <> 6) {
              $overdue_icon_color = "#00CC00"; //GREEN
            }

            
            //PREPARE ROW
            return "
              <tr doc_id=$row->DOC_ID message_id='$row->GMAIL_MESSAGE_ID'>
                  <td>$row->DRN</td>
                  <td>$row->SUBJECT</td>
                  <td>$row->DATE_ROUTE</td>
                  <td>$row->AGE</td>
                  <td>$row->STATUS</td>
                  <td>
                    ".($row->DAY_DURATION >= 3 && $row->RSTATUS <> 6 ? "<i class='fa fa-flag fa-sm' style='color: $overdue_icon_color;'></i>":"" )."
                    ".($row->FOLLOWUP_COUNT > 0 && $row->RSTATUS <> 6  ? "<i class='fa fa-solid fa-feather' style='color: $follow_up_icon_color;'></i>":"" )."
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

                        <a class='dropdown-item' href='#' id='btn_route_check_replies'><i class='fas fa-exclamation'></i> Check for response</a>
                        <a class='dropdown-item' href='#' id='btn_route_mark_done'><i class='fas fa-check'></i> Mark Done</a>
                        <a class='dropdown-item' href='#' id='btn_route_delete'><i class='fas fa-trash' ></i> Delete</a>


                      </div>
                    </div>

                  </td>
              </tr>
            "; 


    }

    public function get_routed_documents_table_entry($message_id) {
        $query = $this->Routing_model->fetch($message_id);
        return $this->get_routed_documents_table_row($query->row());
    }


    public function get_routed_documents_table_entries() {
        
        $query = $this->Routing_model->fetch();
        $result = $query->result();
        $table_content = "";
        $route_due = 0;
        $route_count = $query->num_rows();
        $route_responsed = 0;
        foreach ($result as $row) {
            // $with_response = $this->Gmail_model->check_cache($row->GMAIL_MESSAGE_ID);
            if ($row->REPLY_COUNT > 0) {
              $route_responsed+=1;
            }
            if ($row->DAY_DURATION > 7) {
                $route_due+=1;
            }

            $table_content.=$this->get_routed_documents_table_row($row);

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


