
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

