

<!-- .documentEntryEditorModal -->
<div class="modal fade" id="documentEntryEditorModal"  tabindex="1" role="dialog" aria-labelledby="documentEntryEditorModalLabel" aria-hidden="true" data-backdrop="static">
  <form id="form_doc_editor">
  <div class="modal-dialog modal-dialog-centered" style="max-width: 80%;" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="documentEntryEditorModalLabel">Document Editor</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" disabled=disabled>

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
                              Document information
                            </h3>
                          </div>
                          <!-- /.card-header -->
                          <div class="card-body">

                            <input type="hidden" id="ID" name="ID" value="0">
                            <div class="row" >
                               <div class="col-lg-12">

                                    <div class="input-group mb-3">
                                      <div class="input-group-prepend">
                                        <label class="input-group-text" for="DOC_TYPE" style="min-width:120px;">DOC TYPE</label>
                                      </div>
                                      <select class="custom-select" id="DOC_TYPE" name="DOC_TYPE" curr-value='-1'>
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
                                    REMARKS <textarea class="summernote" id="summernote" style="height: 400px; min-height: 400px;" rows="20"></textarea>
                                 </div>
                              </div>

                          </div> <!-- CARD BODY -->


                          <div class="card-footer">
                            <strong>ATTACHMENTS</strong>
                            <div>

                                <table class="table">
                                  <thead>
                                    <tr>
                                      <th style="width: 100px">ID</th>
                                      <th style="">FILE</th>
                                      <th style="width: 100px">TYPE</th>
                                      <th style="width: 100px">OPTIONS</th>
                                    </tr>
                                  </thead>
                                  <tbody class="uploaded_file_container">

                                    <tr>
                                      <td style="">0001</td>
                                      <td style="">document1.pdf</td>
                                      <td style="">2.3 MB</td>
                                      <td style="">
                                        <div class="btn-group btn-group-sm">
                                          <button type="button" class="btn btn-secondary">
                                            <i class="fa fa-download"></i>
                                          </button>
                                          <button type="button" class="btn btn-secondary">
                                            <i class="fa fa-eye"></i>
                                          </button>
                                          <button type="button" class="btn btn-secondary">
                                            <i class="fa fa-print"></i>
                                          </button>
                                        </div>
                                      </td>
                                    </tr>

                                  </tbody>
                                </table>


                            </div>
                          </div>
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


                <div class="card card-secondary options-container">
                   <div class="card-header">
                      <h3 class="card-title">OPTIONS</h3>
                   </div>
                   <div class="card-body">
                   <!-- <form id="form_doc_restrictions"> -->
                         <div class="row">
                            <div class="col-sm-12">
                               <div class="form-group">
                                  <div class="custom-control custom-checkbox">
                                     <input type="hidden" name="opt-public" value="0">
                                     <input class="custom-control-input opt-public opt-bin-0" type="checkbox" id="customCheckbox1" name="opt-public" value="1">
                                     <label for="customCheckbox1" class="custom-control-label">Public</label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                     <input type="hidden" name="opt-internal-use-only" value="0">
                                     <input class="custom-control-input opt-internal-use-only opt-bin-1" type="checkbox" id="customCheckbox2"  name="opt-internal-use-only" value="1">
                                     <label for="customCheckbox2" class="custom-control-label">Internal User Only</label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                    <input type="hidden" name="opt-urgent" value="0">
                                     <input class="custom-control-input custom-control-input-danger opt-urgent opt-bin-2" type="checkbox" id="customCheckbox3"  name="opt-urgent" value="1">
                                     <label for="customCheckbox3" class="custom-control-label">Urgent</label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                    <input type="hidden" name="opt-confidential" value="0">
                                     <input class="custom-control-input custom-control-input-danger opt-confidential opt-bin-3" type="checkbox" id="customCheckbox4"  name="opt-confidential" value="1">
                                     <label for="customCheckbox4" class="custom-control-label">Confidential</label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                    <input type="hidden" name="opt-restricted" value="0">
                                     <input class="custom-control-input custom-control-input-danger opt-restricted opt-bin-4" type="checkbox" id="customCheckbox5" name="opt-restricted" value="1">
                                     <label for="customCheckbox5" class="custom-control-label">Restricted</label>
                                  </div>
                                  <div class="custom-control custom-checkbox">
                                     <input type="hidden" name="opt-top-secret" value="0">
                                     <input class="custom-control-input custom-control-input-danger custom-control-input-outline opt-top-secret opt-bin-5" type="checkbox" id="customCheckbox6"  name="opt-top-secret" value="1">
                                     <label for="customCheckbox6" class="custom-control-label">Top Secret</label>
                                  </div>
                               </div>
                            </div>

                         <div class="input-group">
                            <div class="custom-control custom-switch">
                               <input type="hidden" name="opt-dc-only" value="0">
                               <input type="checkbox" class="custom-control-input opt-bin-6" id="customSwitch1" name="opt-dc-only" value="1">
                               <label class="custom-control-label" for="customSwitch1">Make it visible to the Division Chief Only</label>
                            </div>
                         </div>
                         <div class="form-group">
                            <div class="custom-control custom-switch">
                               <input type="hidden" name="opt-hold-doc" value="0">
                               <input type="checkbox" class="custom-control-input  opt-bin-7" id="customSwitch2" name="opt-hold-doc" value="1">
                               <label class="custom-control-label" for="customSwitch2">Hold This document</label>
                            </div>
                         </div>
                         <div class="form-group">
                            <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
                               <input type="hidden" name="opt-allow-other-obsu" value="0">
                               <input type="checkbox" class="custom-control-input  opt-bin-8" id="customSwitch3" name="opt-allow-other-obsu" value="1">
                               <label class="custom-control-label" for="customSwitch3">Allow other OBSU to view documents</label>
                            </div>
                         </div>

                          <div class="form-group">
                              <div class="custom-file">
                                  <input type="file" class="custom-file-input attached-files" id="customFile" name="attached-files[]" multiple accept="application/pdf" />
                                  <label class="custom-file-label" for="customFile">Choose file</label>
                              </div>
                          </div>


                         <div class="form-group">
                           <ul id="selectedFilesList"></ul>
                         </div>

                      <!-- </form>                       -->
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
