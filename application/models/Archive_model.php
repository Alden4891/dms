<?php
class Archive_model extends CI_Model {

    public function __construct(){
        $this->load->database();
    }


    public function restore($doc_id) {
        $data = array(
            'DELETED_DATE' => null, // Set to the current datetime
            'DELETED_BY' => null
        );

        $this->db->where('id', $doc_id);
        $this->db->update('tbl_routes', $data);

        return ($this->db->affected_rows() > 0);
    }

}