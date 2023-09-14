<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Documents_model extends CI_Model {
    /**
     * Documents_model constructor.
     */
    public function __construct(){
        parent::__construct();
        $this->load->database();
    }

    /**
     * Retrieve all documents.
     *
     * @return mixed Result of all documents.
     */
    public function get_all() {
        return $this->db->get('tbl_documents')->result();
    }


    /**
     * Retrieve data for listing only.
     *
     * @return mixed Result of all documents.
     */
    public function get_list() {

        $result = $this->db->select('`tbl_documents`.`ID`,`tbl_documents`.`DRN`,`tbl_documents`.`SUBJECT`,`tbl_status`.`STATUS`,`tbl_documents`.`DATE_POSTED`')
                ->from('`db_dms`.`tbl_documents`')
                ->join('`db_dms`.`tbl_status`', '(`tbl_documents`.`STATUS` = `tbl_status`.`ID`)', 'LEFT')
                ->where_in('`tbl_documents`.`ID`', array(566, 567, 568))
                ->group_start()
                ->where('`tbl_documents`.`DELETED_BY`', NULL)
                ->group_end()
                ->order_by('`tbl_documents`.`ID` ASC')->get();

        return $result->result();
    }



    /**
     * Save a document by updating existing record or inserting new record.
     *
     * @param array $data Data to be saved.
     * @return void
     */
    public function save_document($data) {

        $id = $data['ID'];
        unset($data['ID']);

        if ($id) {
            // Update the record if the ID exists
            $this->db->where('ID', $id);
            $this->db->update('tbl_documents', $data);
            return $id;
        } else {
            $data['DATE_POSTED'] = date('Y-m-d H:i:s');
            // Insert a new record if the ID doesn't exist
            $this->db->insert('tbl_documents', $data);
            return  $this->db->insert_id();
        }
    }

    /**
     * Delete a document by ID.
     *
     * @param int $id ID of the document to delete.
     * @return void
     */
    public function delete_document($id) {
        $this->db->where('ID', $id);
        $this->db->delete('tbl_documents');
    }

    /**
     * Get a single document by ID.
     *
     * @param int $id ID of the document to retrieve.
     * @return mixed Result of the single document.
     */
    public function get_document($id) {
        $this->db->where('ID', $id);
        return $this->db->get('tbl_documents')->row();
    }

    /**
     * Get uploaded documents by ID.
     *
     * @param int $id ID of the document to retrieve.
     * @return mixed Result of the single document.
     */
    public function get_upload_listing($doc_id) {
        $this->db->where('doc_id', $doc_id);
        return $this->db->get('tbl_uploads')->result();
    }

    public function get_file_details($upload_id) {
        $this->db->where('id', $upload_id);
        return $this->db->get('tbl_uploads')->row();
    }

    public function set_status($data) {
        $this->db->where('`ID`', $data->doc_id)
        ->set('`STATUS`', $data->status_id)
        ->update('tbl_documents');

        // return true if has changes
        return ($this->db->affected_rows() > 0);
    }

    public function delete($doc_id) {
        $data = array(
            'DELETE_DATE' => date('Y-m-d H:i:s'), // Set to the current datetime
            'DELETED_BY' => $this->session->userdata('user_id')
        );

        $this->db->where('id', $doc_id);
        $this->db->update('tbl_documents', $data);

        return ($this->db->affected_rows() > 0);
    }

    public function restore($doc_id) {
        $data = array(
            'DELETE_DATE' => null, // Set to the current datetime
            'DELETED_BY' => null
        );

        $this->db->where('id', $doc_id);
        $this->db->update('tbl_documents', $data);

        return ($this->db->affected_rows() > 0);
    }
}
