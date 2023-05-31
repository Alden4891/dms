

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Document Listing</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="card-body">
          <div class="row">
            <div class="col-12 col-md-12 col-lg-9 order-2 order-md-1">
              <div class="row">
                <div class="col-12 col-sm-4">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">Total Number of documents</span>
                      <span class="info-box-number text-center text-muted mb-0">2300</span>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-4">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">Total number of routed documents</span>
                      <span class="info-box-number text-center text-muted mb-0">2000</span>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-4">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">Total Number of archived documents</span>
                      <span class="info-box-number text-center text-muted mb-0">20</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-12">

                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                    <tr>
                      <th>DTX</th>
                      <th>Subject</th>
                      <th>Date</th>
                      <th>Status</th>
                      <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                      <?php foreach ($documents as $document) { ?>
                          <tr>
                              <td><?php echo $document->DRN; ?></td>
                              <td><?php echo $document->SUBJECT; ?></td>
                              <td><?php echo $document->DATE_POSTED=='0000-00-00 00:00:00'?'no-data':$document->DATE_POSTED; ?></td>
                              <td><?php echo $document->STATUS; ?></td>
                              <td>
                                <div class="dropdown">
                                  <button  style="width: 100%;" class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   <i class="fas fa-file-prescription"></i> Select
                                  </button>
                                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#" id="btn_edit_entry" doc_id=<?php echo $document->ID; ?>><i class="fas fa-edit"></i> Edit</a>
                                    <a class="dropdown-item" href="#" id="btn_route_entry"><i class="fas fa-route"></i> Route</a>
                                    <a class="dropdown-item" href="#" id="btn_archive_entry"><i class="fas fa-archive"></i> Archive</a>
                                  </div>
                                </div>

                              </td>
                          </tr>

                      <?php } ?>


                    </tbody>
                    <tfoot>
                    <tr>
                      <th>Document DRN</th>
                      <th>Document Subject</th>
                      <th>Date stated in the document</th>
                      <th>Status of the document</th>
                      <th>&nbsp;</th>
                    </tr>
                    </tfoot>
                  </table>

                </div>
              </div>
            </div>
            <div class="col-12 col-md-12 col-lg-3 order-1 order-md-2">
              <h3 class="text-primary"><i class="fas fa-paint-brush"></i>Note:</h3>
              <p class="text-muted">Please note that the following list consists of indexes of documents. To search for a specific document, please use the search box located at the upper-right corner of the table.
              </p>
              <br>

              <h5 class="mt-5 text-muted">Indexes</h5>
              <ul class="list-unstyled">
                <li>
                  <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-word"></i> ORD</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-pdf"></i> REFERRALS</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-envelope"></i> REQUESTS</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-image "></i> DIRECTIVES</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-image "></i> COA-AOM</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-image "></i> CONFIDENTIAL</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-image "></i> 8888</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-word"></i> ROUTED</a>
                </li>
              </ul>
              <div class="text-center mt-5 mb-3">
                <a href="#" class="btn btn-sm btn-primary" id="btn_upload_document">NEW DOCUMENT</a>
                <!-- <a href="#" class="btn btn-sm btn-warning">Report contact</a> -->
              </div>
            </div>
          </div>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->



<!-- .documentEntryEditorModal -->
<div class="modal fade" id="documentEntryEditorModal" tabindex="-1" role="dialog" aria-labelledby="documentEntryEditorModalLabel" aria-hidden="true" data-backdrop="static">
  <form id="form_doc_editor" method="post" enctype="multipart/form-data">
  <div class="modal-dialog modal-dialog-centered" style="max-width: 80%;" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="documentEntryEditorModalLabel">Document Editor</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <!-- Default box -->
        <div class="card">

          <div class="card-body">
            <div class="row">
              <div class="col-12 col-md-12 col-lg-9 order-2 order-md-1">

                <div class="row">
                  <div class="col-12">
                      
                    <div class="row">
                      <div class="col-md-12">
                        <div class="card card-outline card-info">
                          <div class="card-header">
                            <h3 class="card-title">
                              Please input document information
                            </h3>
                          </div>
                          <!-- /.card-header -->
                          <div class="card-body">

                            <input type="hidden" id="ID" name="ID" value="0">
                            <div class="row" >
                               <div class="col-lg-12">

                                    <div class="input-group mb-3">
                                      <div class="input-group-prepend">
                                        <label class="input-group-text" for="doctype_selection" style="min-width:120px;">DOC TYPE</label>
                                      </div>
                                      <select class="custom-select" id="doctype_selection" name="doctype_selection" curr-value='-1'>
                                        <option value="-1" selected>SELECT</option>
                                        <option value="1">MEMORANDUM</option>
                                        <option value="2">EXECUTIVE SUMMARY</option>
                                        <option value="3">TRAVEL REQUESTS</option>
                                        <option value="4">COMMUNICATIONS</option>
                                        <option value="5">PROPOSALS</option>
                                        <option value="6">MEETINGS</option>
                                        <option value="7">DATA REQUESTS</option>
                                      </select>
                                    </div>

                             
                               </div>
                            </div>
                              <div id="form_object_container">

                              </div>
                              <div class="row invisible" id='form_editor_remarks_container'>
                             
                                 <div class="col-lg-12">
                                    REMARKS <textarea id="summernote" style="height: 400px; min-height: 400px;" rows="20">ASDASD</textarea>
                                 </div>
                              </div>
                           
                          </div> <!-- CARD BODY -->


<!--                           <div class="card-footer">
                            Visit <a href="https://github.com/summernote/summernote/">Please input document description</a> documentation for more examples and information about the plugin.
                          </div> -->
                        </div>
                      </div>
                      <!-- /.col-->
                    </div>


                  </div>
                </div>
              </div>
              <div class="col-12 col-md-12 col-lg-3 order-1 order-md-2">
                <h3 class="text-primary"><i class="fas fa-paint-brush"></i>Note:</h3>

                <p class="text-muted">
                Document tagging in digitization is the process of categorizing and labeling documents 
                with relevant keywords or metadata to make them easily searchable and retrievable. 
                It involves assigning descriptive information to a document, such as its title, author, date, and subject matter, 
                as well as adding tags or keywords that describe its content, format, and other relevant characteristics.
                </p>

                <p class="text-muted">
                Tagging documents is a crucial part of digitalization because it makes it easier to manage and 
                find information in a digital environment. By adding tags or metadata to documents, 
                they can be organized into categories, searched, and retrieved based on specific criteria, 
                making them more accessible and useful to users.
                </p>


                <div class="card card-secondary">
                   <div class="card-header">
                      <h3 class="card-title">OPTIONS</h3>
                   </div>
                   <div class="card-body">
                      <form>
                         <div class="row">
                            <div class="col-sm-12">
                               <div class="form-group">
                                  <div class="custom-control custom-checkbox">
                                     <input class="custom-control-input" type="checkbox" id="customCheckbox1" name="opt-public">
                                     <label for="customCheckbox1" class="custom-control-label">Public</label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                     <input class="custom-control-input" type="checkbox" id="customCheckbox2"  name="opt-internal-use-only">
                                     <label for="customCheckbox2" class="custom-control-label">Internal User Only</label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                     <input class="custom-control-input custom-control-input-danger" type="checkbox" id="customCheckbox3"  name="opt-urgent">
                                     <label for="customCheckbox3" class="custom-control-label">Urgent</label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                     <input class="custom-control-input custom-control-input-danger" type="checkbox" id="customCheckbox4"  name="opt-confidential">
                                     <label for="customCheckbox4" class="custom-control-label">Confidential</label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                     <input class="custom-control-input custom-control-input-danger" type="checkbox" id="customCheckbox5" name="opt-restricted">
                                     <label for="customCheckbox5" class="custom-control-label">Restricted</label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                     <input class="custom-control-input custom-control-input-danger custom-control-input-outline" type="checkbox" id="customCheckbox6"  name="opt-top-secret">
                                     <label for="customCheckbox6" class="custom-control-label">Top Secret</label>
                                  </div>
                               </div>
                            </div>

                         <div class="form-group">
                            <div class="custom-control custom-switch">
                               <input type="checkbox" class="custom-control-input" id="customSwitch1" name="opt-dc-only">
                               <label class="custom-control-label" for="customSwitch1">Make it visible to the Division Chief Only</label>
                            </div>
                         </div>
                         <div class="form-group">
                            <div class="custom-control custom-switch">
                               <input type="checkbox" class="custom-control-input" id="customSwitch2" name="opt-hold-doc">
                               <label class="custom-control-label" for="customSwitch2">Hold This document</label>
                            </div>
                         </div>
                         <div class="form-group">
                            <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
                               <input type="checkbox" class="custom-control-input" id="customSwitch3" name="opt-allow-other-obsu">
                               <label class="custom-control-label" for="customSwitch3">Allow other OBSU to view documents</label>
                            </div>
                         </div>

                          <div class="form-group">
                              <div class="custom-file">
                                  <input type="file" class="custom-file-input" id="customFile" name="attached-files[]" multiple>
                                  <label class="custom-file-label" for="customFile">Choose file</label>
                              </div>
                          </div>

                          
                         <div class="form-group">
                           <ul id="selectedFilesList"></ul>
                         </div>

                      </form>
                   </div>
                </div>


                <!-- <div class="text-center mt-5 mb-3">
                  <a href="#" class="btn btn-sm btn-primary">Add files</a>
                  <a href="#" class="btn btn-sm btn-warning">Report contact</a>
                </div> -->
              </div>
            </div>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" id='button_save_form_editor'>Save</button>
      </div>
    </div>
  </div>
  </form>
</div>
 <!-- /.documentEntryEditorModal -->



<!-- .documentRoutingModal -->
<div class="modal fade" id="documentRoutingModal" tabindex="-1" role="dialog" aria-labelledby="documentRoutingModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog modal-dialog-centered" style="max-width: 80%;" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="documentRoutingModalLabel">Document Routing</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <!-- Default box -->
        <div class="card">

          <div class="card-body">
            <div class="row">
              <div class="col-12 col-md-12 col-lg-8 order-2 order-md-1">

                <div class="row">
                  <div class="col-12">
                      
 


                        <div class="card card-outline card-info">
                          <div class="card-header">
                            <h3 class="card-title">
                              To add recipients, enter their email addresses in the recipient bar. Separate multiple email addresses with commas (,). Make sure to double-check the addresses for accuracy before sending.
                            </h3>
                          </div>
                          <!-- /.card-header -->
                          <div class="card-body">


                            <br>
                            <div class="row">
                                 <div class="col-lg-12">
                                  <div class="input-group">

                                     <div class="input-group-prepend">
                                        <span class="input-group-text">SUBJECT</span>
                                     </div>
                                     <input type="text" class="form-control" placeholder="" value="RE: Umnibus guideline on the utiliztion of document management system">
                                  </div>                               
                                </div>
                            </div>
                            
                            <br>
                            Document Description
                            <textarea id="summernote2" style="height: 200px;" rows="6">
                              Good day, <br><br>
                              Please provide feedback on the attached document within 7 days to comply with our agency's policy. 
                              <br><br>
                              Thank you.
                              <br><br>
                              <br><br>
                              <br><br>
                              <br><br>
                              <br>
                            </textarea>
                          </div>
<!--                           <div class="card-footer">
                            Visit <a href="https://github.com/summernote/summernote/">Please input document description</a> documentation for more examples and information about the plugin.
                          </div> -->
                        </div>



                  </div>
                </div>
              </div>
              <div class="col-12 col-md-12 col-lg-4 order-1 order-md-2">
                <h3 class="text-primary"><i class="fas fa-paint-brush"></i>Note:</h3>

                <p class="text-muted">

                      Document routing refers to the process of sending a document or piece of information from one place to another within an organization. 
                      It helps ensure that important documents are sent to the right people for review 
                      or action. You can view all routed document  <a href="<?=site_url('document/routelist')?>">list of routed documents</a>. The system will automatically capture email responses.   


                </p>

                <div class="card card-secondary">
                   <div class="card-header">
                      <h3 class="card-title">Document Information</h3>
                   </div>
                   <div class="card-body">


                    <hr>
                    <h5>Details</h5>
                      <form>
                          <ul class="list-unstyled">
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-word"></i> <strong>DRN</strong>: 4PS-12345-12345678</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-pdf"></i> <strong>DATE</strong>: 2023-03-11</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-envelope"></i> <strong>SUBJECT</strong>: Umnibus guideline on the utiliztion of document management system</a>
                             </li>
                          </ul>                      
                         <div class="form-group"></div>
                      </form>


                    <hr>
                    <h5>Attachments:</h5>
                      <form>
                          <ul class="list-unstyled">
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-word"></i> Functional-requirements.docx</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-pdf"></i> UAT.pdf</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-envelope"></i> Email-from-flatbal.mln</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-image "></i> Logo.png</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-word"></i> Contract-10_12_2014.docx</a>
                             </li>
                          </ul>                      
                         <div class="form-group"></div>
                      </form>



                   </div>
                </div>


                <!-- <div class="text-center mt-5 mb-3">
                  <a href="#" class="btn btn-sm btn-primary">Add files</a>
                  <a href="#" class="btn btn-sm btn-warning">Report contact</a>
                </div> -->
              </div>
            </div>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send</button>
      </div>
    </div>
  </div>
</div>
 <!-- /.documentRoutingModal -->




<!-- .documentArchivingModal -->
<div class="modal fade" id="documentArchivingModal" tabindex="-1" role="dialog" aria-labelledby="documentArchivingModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog modal-dialog-centered" style="max-width: 80%;" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="documentArchivingModalLabel">Document Archiving</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <!-- Default box -->
        <div class="card">

          <div class="card-body">
            <div class="row">
              <div class="col-12 col-md-12 col-lg-8 order-2 order-md-1">

                <div class="row">
                  <div class="col-12">
                      
 
                <div class="card card-secondary">
                   <div class="card-header">
                      <h3 class="card-title">Document Information</h3>
                   </div>
                   <div class="card-body">


                    <hr>
                    <h5>Details</h5>
                      <form>
                          <ul class="list-unstyled">
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-word"></i> <strong>DRN</strong>: 4PS-12345-12345678</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-pdf"></i> <strong>DATE</strong>: 2023-03-11</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-envelope"></i> <strong>SUBJECT</strong>: Umnibus guideline on the utiliztion of document management system</a>
                             </li>
                          </ul>                      
                         <div class="form-group"></div>
                      </form>


                    <hr>
                    <h5>Attachments:</h5>
                      <form>
                          <ul class="list-unstyled">
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-word"></i> Functional-requirements.docx</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-pdf"></i> UAT.pdf</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-envelope"></i> Email-from-flatbal.mln</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-image "></i> Logo.png</a>
                             </li>
                             <li>
                                <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-file-word"></i> Contract-10_12_2014.docx</a>
                             </li>
                          </ul>                      
                         <div class="form-group"></div>
                      </form>



                   </div>
                </div>




                  </div>
                </div>
              </div>
              <div class="col-12 col-md-12 col-lg-4 order-1 order-md-2">
                <h3 class="text-primary"><i class="fas fa-paint-brush"></i>Note:</h3>

                <p class="text-muted">

                    Digitization and archiving of old documents is the process of converting physical records into digital format and storing them electronically for long-term preservation and easy access. This is necessary because physical records can deteriorate over time, while digital records can be easily searched, organized, and protected against loss or damage. Digitization and archiving can also improve the efficiency of business operations and support regulatory compliance and legal requirements.  

                </p>
                  <div class="mx-auto" align="center" >
                    <a class="btn btn-app pull-center" style="height:160px;">
                    <span class="badge bg-teal">1</span>
                    <i class="fas fa-inbox"  style="font-size: 150px;"></i> ARCHIVE
                    </a>
                  </div>


                <!-- <div class="text-center mt-5 mb-3">
                  <a href="#" class="btn btn-sm btn-primary">Add files</a>
                  <a href="#" class="btn btn-sm btn-warning">Report contact</a>
                </div> -->
              </div>
            </div>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <!-- <button type="button" class="btn btn-primary">Send</button> -->
      </div>
    </div>
  </div>
</div>
 <!-- /.documentArchivingModal -->


<script type="text/javascript">
  
$(document).ready(function() {

  //on file select
  $('#customFile').on('change', function() {
      displaySelectedFiles();
  });


  // on new document clicked
  $("#btn_upload_document").click(function() {
    $("#documentEntryEditorModal").modal("show");
  });

function iferror(value,alt) {
    try{
        return value.split(' ')[0];
    }catch{
        return alt;
    }
}

  // on edit document clicked
  $(document).on('click','#btn_edit_entry',function() {

    //get doc_id
    var doc_id = $(this).attr('doc_id');
    
    //get doc data
  setTimeout(function() {
        $.ajax('<?=site_url('document/data/')?>'+doc_id, {
          type: "POST",
          error: function(data) {
            console.log(data);
            alert("An error has occurred! Please contact aaquinones.fo12@gmail.com.");
          },
          success: function(data) {
            var obj_data = jQuery.parseJSON(data);
            console.log(obj_data.DOC_TYPE);

            //load form controls
            $.ajax('<?=site_url('docEditorModalController/getFormConent')?>', {
              data: {
                doctype: obj_data.DOC_TYPE
              },
              type: "POST",
              // beforeSend: function(xhr, opts) {
              //   if (doctype == -1) {
              //     xhr.abort();
              //     console.log(" form content request aborted");
              //     $('#form_object_container').html('');
              //     $('#form_editor_remarks_container').addClass('invisible');
              //   }
              // },
              error: function(data) {
                console.log(data);
                alert("An error has occurred! Please contact aaquinones.fo12@gmail.com.");
              },
              success: function(data) {
                var obj = jQuery.parseJSON(data);
                $('#form_object_container').html(obj.dom);
                $('#form_editor_remarks_container').removeClass('invisible');
                $('#doctype_selection').attr('curr-value', obj_data.DOC_TYPE);

                //disable document type selection
                $("#doctype_selection").val(obj_data.DOC_TYPE);
                $('#doctype_selection').attr('disabled',true)

                //load data to the form controls

                $('#ID').val(obj_data.ID);
      
                $('#DRN').val(obj_data.DRN);
                $('#DATE_POSTED').val(obj_data.DATE_POSTED.split(' ')[0]);
                $('#TIME_POSTED').val(obj_data.DATE_POSTED.split(' ')[1]);
                $('#OBSU').val(obj_data.OBSU);
                $('#STATUS').val(obj_data.STATUS);
                $('#SUBJECT').val(obj_data.SUBJECT);
                $('#SIGNED_BY').val(obj_data.SIGNED_BY);
                $('#RECEIVED_BY').val(obj_data.RECEIVED_BY);
                $('#HANDLER').val(obj_data.HANDLER);

                $('#END_USERS').val(obj_data.END_USERS);
                $('#VENUE').val(obj_data.VENUE);
                $('#AMOUNT').val(obj_data.AMOUNT);
                $('#PARTICIPANTS').val(obj_data.PARTICIPANTS);
                $('#DATE_TARGET').val(obj_data.DATE_TARGET);                $('#EXP_COMPUTATION').val(obj_data.EXP_COMPUTATION);
                $('#DATE_REVIEWED').val(iferror(obj_data.DATE_REVIEWED,''));
                $('#DATE_INITIALED').val(iferror(obj_data.DATE_INITIALED,''));
                $('#DATE_RECEIVED_COPY').val(iferror(obj_data.DATE_RECEIVED_COPY,''));

            
                // $('#summernote').text(obj_data.REMARKS);
                $('#summernote').summernote('code', obj_data.REMARKS);


              },
              complete: function() {
                // Hide loading indicator
                $('#form_editor_remarks_container').removeClass('loading');
              }
            });

          },
          complete: function() {
            // Hide loading indicator
            $('#form_editor_remarks_container').removeClass('loading');
          }
        });
      }, 100);



    //load form controls

    //set data


    $("#documentEntryEditorModal").modal("show");
  });

  // on route document clicked
  $(document).on('click','#btn_route_entry',function() {
    $("#documentRoutingModal").modal("show");
  });

  // on archive document clicked
  $(document).on('click','#btn_archive_entry',function() {
    $("#documentArchivingModal").modal("show");
  });

  //initialize text editor
  $(function () {
    // Summernote
    $('#summernote').summernote()
    $('#summernote2').summernote()


    // CodeMirror
    CodeMirror.fromTextArea(document.getElementById("codeMirrorDemo"), {
      mode: "htmlmixed",
      theme: "monokai"
    });
  })

  //on document type select
$(document).on('change', '#doctype_selection', function(e) {
  e.preventDefault();
  var doctype = $(this).val();
  var curr_value = $(this).attr('curr-value');
  var formData = $('#form_doc_editor').serializeArray();
  var fn_drn = formData.find(element => element.name === 'fe_drn');
  var fn_title = formData.find(element => element.name === 'fe_title');

  if (fn_drn || fn_title) {
    if (fn_drn?.value || fn_title?.value) {
      if (!confirm('The changes you made will be discarded. Do you want to continue?')) {
        e.stopPropagation();
        this.value = curr_value;
        return false;
      }
    }
  } else {
    console.log('The "fn_drn" field is not found in the form data.');
  }

  // Show loading indicator
  $('#form_object_container').html('<div id="loading_indicator" class="text-center"><img src="images/loading.gif" alt="Loading..." /></div>  ');
  $('#form_editor_remarks_container').addClass('invisible');

  //fetch data and objects; the timer is for testing only
  setTimeout(function() {
    $.ajax('<?=site_url('docEditorModalController/getFormConent')?>', {
      data: {
        doctype: doctype
      },
      type: "POST",
      beforeSend: function(xhr, opts) {
        if (doctype == -1) {
          xhr.abort();
          console.log(" form content request aborted");
          $('#form_object_container').html('');
          $('#form_editor_remarks_container').addClass('invisible');
        }
      },
      error: function(data) {
        console.log(data);
        alert("An error has occurred! Please contact aaquinones.fo12@gmail.com.");
      },
      success: function(data) {
        var obj = jQuery.parseJSON(data);
        $('#form_object_container').html(obj.dom);
        $('#form_editor_remarks_container').removeClass('invisible');
        $('#doctype_selection').attr('curr-value', doctype);
      },
      complete: function() {
        // Hide loading indicator
        $('#form_editor_remarks_container').removeClass('loading');
      }
    });
  }, 100);
});




  $(document).on('change','#fe_drn',function(e){
      e.preventDefault();
      $('#doctype_selection').prop('readyonly', true);
      alert(1);
  });

   $('#form_doc_editor').submit(function(e) {
      e.preventDefault();


      // var formData = new FormData($('#form_doc_editor')[0]);

      // $.ajax({
      //   url: 'document/upload',
      //   type: 'POST',
      //   data: formData,
      //   processData: false,
      //   contentType: false,
      //   success: function(response) {
      //     // Handle the response
      //   },
      //   error: function(xhr, status, error) {
      //     // Handle the error
      //   }
      // });

      var formData = $('#form_doc_editor').serialize();
      

      $.ajax({
        url: 'document/save',
        type: 'POST',
        data: formData,
        processData: false,  // Prevent jQuery from processing the data
        // contentType: false,  // Prevent jQuery from automatically setting the content type

        beforeSend: function() {
          // Code to run before the request is sent
          console.log('Before sending the request...');
        },
        success: function(response) {
          // Code to run when the request is successfully completed
          console.log('Request succeeded!');
          console.log(response);
        },
        error: function(xhr, status, error) {
          // Code to run when the request encounters an error
          console.log('Request failed!');
          console.log('Error:', xhr);
        },
        complete: function() {
          // Code to run regardless of success or failure
          console.log('Request completed.');
          e.preventDefault();
        }
      });      

  });




function displaySelectedFiles() {
  const files = $('#customFile')[0].files;

  const fileList = $('#selectedFilesList');
  fileList.empty();

  for (let i = 0; i < files.length; i++) {
      const file = files[i];
      const listItem = $('<li></li>');
      const fileTypeIcon = getFileTypeIcon(file.type);

      listItem.html(`<img src="${fileTypeIcon}" alt="${file.type} icon" class="file-icon"> ${file.name}`);
      fileList.append(listItem);
  }
}

function getFileTypeIcon(fileType) {
    // Define icons for specific file types here
    // For simplicity, let's assume three file types with corresponding icons
    switch (fileType) {
        case 'image/jpeg':
        case 'image/png':
            return 'image-icon.png';
        case 'application/pdf':
            return 'pdf-icon.png';
        case 'text/plain':
            return 'text-icon.png';
        default:
            return 'default-icon.png';
    }
}

});  

</script>