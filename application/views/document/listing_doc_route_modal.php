
<!-- .documentRoutingModal -->
<div class="modal fade" id="documentRoutingModal" tabindex="-1" role="dialog" aria-labelledby="documentRoutingModalLabel" aria-hidden="true" data-backdrop="static">
  <form class="routing-form" doc_id="">
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
                                  <!-- <select id="email_recepients" name="emails" multiple width="100%" ></select> -->

                                  <div class="row">
                                    <div class="col-lg-12" >
                                      <div class="form-group">
                                        <label for="email_recepients">@ Email address</label>
                                        <!-- <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email"> -->
                                         <select class="" id="email_recepients" name="emails[]" multiple data-placeholder="add email recipients" required></select>
                                      </div>
                                    </div>
                                    
                                  </div>

                                  <div class="row">
                                    <div class="col-lg-12">
                                      <div class="input-group mb-3">
                                        <div class="input-group-append">
                                          <label class="input-group-text" for="routing_subject" >S</label>
                                        </div>
                                       <input type="text" id="routing_subject" name="routing_subject" class="form-control routing-form-subject" placeholder="" value="">
                                      </div>
                                    </div>
                                  </div>

                              Document Description
                              <textarea class="summernote" id="summernote2" style="height: 200px;" rows="6">
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
                        <!-- <form> -->
                            <ul class="list-unstyled">
                               <li>
                                  <a href="#" class="btn-link text-secondary"><i class="far fa-fw fa-file-word"></i> <strong>DRN</strong>: <span class="routing-form-drn"></span></a>
                               </li>
                               <li>
                                  <a href="#" class="btn-link text-secondary"><i class="far fa-fw fa-file-pdf"></i> <strong>DATE</strong>: <span class="routing-form-date-posted"></span></a>
                               </li>
                               <li>
                                  <a href="" class="btn-link text-secondary"><i class="far fa-fw fa-envelope"></i> <strong>SUBJECT</strong>: <span class="routing-form-subject"></span></a>
                               </li>
                            </ul>
                           <div class="form-group"></div>
                        <!-- </form> -->


                      <hr>
                      <h5>Attachments:</h5>
                        <!-- <form> -->
                            <ul class="list-unstyled routing-attachment-container">

                            </ul>
                           <div class="form-group"></div>
                        <!-- </form> -->



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
          <button type="button" class="btn btn-primary btn-route-send">Send</button>
        </div>
      </div>
    </div>
  </form>
</div>
 <!-- /.documentRoutingModal -->

