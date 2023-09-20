<?php
class Attachment_model extends CI_Model {

    public function __construct(){
        $this->load->database();
        $this->load->model('Documents_model');
    }

    public function get_instance($file_id) {
        $data = $this->Documents_model->get_file_details($file_id);
        header('Content-type: '. $data->mime_type);
        header('Content-Disposition: inline; filename="' . basename($data->org_filename) . '"');
        header('Content-Transfer-Encoding: binary');
        header('Accept-Ranges: bytes');
        readfile(site_url("uploads/$data->filename"));
    }

    public function delete($file_id){

        //get attachment names
        $filename="";
        $query = $this->db->select('filename')
            ->where('id', $file_id)
            ->get('tbl_uploads');
        if ($query->num_rows() > 0) {
            $row = $query->row();
            $filename = $row->filename;
        } else {
            // Handle the case where no results were found
            $filename = "non_existing_file.pdf"; // or any default value
        }

        //delete records
        $this->db->where('id', $file_id)->delete('tbl_uploads');

        //delete if exists
        $file_path = FCPATH . 'uploads/' . $filename;
        if (file_exists($file_path)) {
            // The file exists; you can now proceed to delete it
            if (unlink($file_path)) {
                return (object) [
                    'success'=>true,
                ];
            } else {
                return (object) [
                    'success'=>false,
                ];
            }
        } else {
                return (object) [
                    'success'=>true,
                ];
        }



    }
}