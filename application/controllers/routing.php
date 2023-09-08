<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class routing extends CI_Controller {
    public function __construct() {
        parent::__construct();

		if(!$this->session->userdata('user_id'))
		redirect(site_url('user/login'), 'refresh');

		$this->load->model("Gmail_model");
		$this->load->model('Documents_model');
        $this->load->model("Routing_model");
        $this->load->model("Dom_model");
    }

    public function index(){
		$data['open_menu'] = 'document';
		$data['route_listing'] = $this->Dom_model->get_routed_documents_table_entries();

		$this->load->view('templates/header');
		$this->load->view('templates/sidebar',$data);
        $this->load->view('document/routing');
        $this->load->view('document/routing_trends_viewer_modal');
        $this->load->view('templates/footer');
		$this->load->view('document/jsloader.php');
    }
    
    private function remove_section_from_gmail_body($html,$class = 'gmail_signature') {

        // Create a DOMDocument object
        $dom = new DOMDocument();

        // print("[");
        // print($html);
        // print("]");

        if ($html === '') {
            return "";
        }

        $dom->loadHTML($html);

        // Create a DOMXPath object to query the DOMDocument
        $xpath = new DOMXPath($dom);

        // Find all div elements with class 'gmail_signature' and remove them
        $nodes = $xpath->query('//div[@class="'.$class.'"]');
        foreach ($nodes as $node) {
            $node->parentNode->removeChild($node);
        }

        // Get the modified HTML
        $modifiedHtml = $dom->saveHTML();

        return $modifiedHtml;

    }

    public function get_trend_viewer_data($message_id){

        //LOAD TRENDS
       
        $trend_data = $this->Routing_model->get_trend_responses($message_id);
        $route_data = $this->Routing_model->get_route_info($message_id);
        $resposes   = $trend_data ['response'];

        $htx = "";
        $prev_sent_date = "";
       

        foreach ($resposes as $respose) {
            $r = (object) $respose;

            $messageId = $r->messageId;
            $senderName = $r->senderName;
            $senderEmail = $r->senderEmail;
            
            $formattedBody  = $r->messageBody;

            $formattedBody = $this->remove_section_from_gmail_body($formattedBody,"gmail_signature");
            $formattedBody = $this->remove_section_from_gmail_body($formattedBody,"gmail_quote");



            $has_attachments = $r->has_attachments;
            $attachments = $r->attachments;

            $dateSent = new DateTime($r->dateSent);
            $sent_date = $dateSent->format('M. d, Y');
            $sent_time = $dateSent->format('g:i A');


            //load date-sent label
            if ($prev_sent_date !== $sent_date) {
                $htx .= "
                      <div class=\"time-label\">
                        <span class=\"bg-danger\">
                          $sent_date
                        </span>
                      </div>
                ";    
                $prev_sent_date = $sent_date;            
            }


            //load attachments
            $att_htx = "";
            foreach ($attachments as $attachment) {
                $att = (object) $attachment;
                $att_htx .= "
                      <a class=\"btn btn-ms btn-app bg-danger\"> 
                      <span class=\"badge bg-teal\">$att->mime_type</span>
                      <i class=\"fas fa-file\"></i>$att->filename
                      </a>
                ";
            }


            //load timelime-items
            $entry_header = $senderEmail=='me'?'Pantawid - Routed document(s)':"$senderEmail - responded";
            $htx .= "
                  <div>
                    <i class=\"fas fa-envelope bg-primary\"></i>

                    <div class=\"timeline-item\">
                      <span class=\"time\"><i class=\"far fa-clock\"></i> $sent_time</span>

                      <h3 class=\"timeline-header\"><a href=\"#\">$entry_header</a></h3>

                      <div class=\"timeline-body\">
                        $formattedBody
                      </div>
                      <div class=\"timeline-footer\">
                        $att_htx
                      </div>
                    </div>
                  </div>
            ";
        }

        $htx .= "
              <div>
                <i class=\"far fa-clock bg-gray\"></i>
              </div>
        ";


        // print('<pre>');
        print_r(json_encode([
            'status'=>$route_data->RSTATUS,
            'response'=>count($resposes)-1,
            'datesent'=>$route_data->DATE_ROUTE,
            'subject'=>$route_data->SUBJECT,
            'drn'=>$route_data->DRN,
            'timeline'=>$htx,
        ]));
        // print('</pre>');


    }
	

    public function send(){

        $form_data = (object) $this->input->post();
        $dataSet = $this->Documents_model->get_upload_listing($form_data->doc_id);

        $arr_attachments = [];
        foreach ($dataSet as $item) {
            $arr_attachments[] = FCPATH.'uploads/'.$item->filename;
        }

        //send email
        $message_id = $this->Gmail_model->send_email($form_data->emails, $form_data->routing_subject, $form_data->message, $arr_attachments) 
                      or die(json_encode(['result'=>'failed','error'=>'Email send failed','message_id'=>0]));

        //save the email transaction to database
        $data = array(
            'DOC_ID' => $form_data->doc_id,
            'DATE_ROUTE' => date('Y-m-d H:i:s'),
            'SUBJECT' => $form_data->routing_subject,
            'MESSAGE' => $form_data->message,
            'RECEPIENT_EMAIL' => implode(',', $form_data->emails),
            'GMAIL_MESSAGE_ID' => $message_id,
            'RSTATUS' => 1 //[0=>'draft',1=>'sent', 2=>'with_replies',3=>'closed']
        );

        $this->db->insert('tbl_routes', $data) or die(json_encode(['result'=>'failed','error'=>'An error occurred while saving routing information in database','message_id'=>0]));

        # RETURN RESULT
        print(json_encode(['result'=>'success','message_id'=>$message_id]));
    }

    public function test(){
        // $data = $this->Routing_model->get_route_info('18a45215b0bc153e');
        $data = $this->Routing_model->get_trend_responses('18a45215b0bc153e');

        print('<pre>');
        print_r($data);
        print('</pre>');
        // 
        // print(1);
    }


}
