
<!-- .listing_doc_viewer_modal2 -->
<div class="modal fade" id="listing_doc_viewer_modal2"  tabindex="3" role="dialog" role="dialog" aria-labelledby="listing_doc_viewer_modalLabel2" aria-hidden="true" >
  <div class="modal-dialog modal-dialog-centered" style="max-width: 80%;" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="listing_doc_viewer_modalLabel2">Document Viewer</h5>
        <button type="button" class="close listing_doc_viewer_modal_close2" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">


    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Catalogue</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body p-0">
                <ul class="nav nav-pills flex-column doc-viewer-attanment-list-container">
                  <li class="nav-item active">
                    <a href="#" class="nav-link">
                      <i class="far fa-file-pdf"></i> document1.pdf
                      <span class="badge bg-primary float-right">12</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-file-pdf"></i> document1.pdf
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-file-alt"></i> document1.pdf
                    </a>
                  </li>

                </ul>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
<!-- 
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Labels</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
             
              <div class="card-body p-0">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="far fa-circle text-danger"></i> Important</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="far fa-circle text-warning"></i> Promotions</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="far fa-circle text-primary"></i> Social</a>
                  </li>
                </ul>
              </div>
            </div>
     -->
          </div>
          <!-- /.col -->
        <div class="col-md-9">
          <div class="card card-primary card-outline">
            <div class="card-header">
              <h3 class="card-title">Document Preview</h3>

              <div class="card-tools">
                <a href="#" class="btn btn-tool" title="Previous"><i class="fas fa-chevron-left"></i></a>
                <a href="#" class="btn btn-tool" title="Next"><i class="fas fa-chevron-right"></i></a>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body p-0">
              <div class="mailbox-read-info">
                <h5>DRN: </h5> 
                <h6>Subject: support@adminlte.io
                  <span class="mailbox-read-time float-right">15 Feb. 2015 11:03 PM</span></h6>
              </div>
              <!-- /.mailbox-read-info -->
              <div class="mailbox-controls with-border text-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-default btn-sm" data-container="body" title="Delete">
                    <i class="far fa-trash-alt"></i>
                  </button>
                  <button type="button" class="btn btn-default btn-sm" data-container="body" title="Reply">
                    <i class="fas fa-reply"></i>
                  </button>
                  <button type="button" class="btn btn-default btn-sm" data-container="body" title="Forward">
                    <i class="fas fa-share"></i>
                  </button>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm" title="Print">
                  <i class="fas fa-print"></i>
                </button>
              </div>
              <!-- /.mailbox-controls -->
              <div class="mailbox-read-message">
                

                <iframe id="prev_pdf2" name="prev_pdf2" width="100%" height="750px"></iframe>
       
              </div>
              <!-- /.mailbox-read-message -->
            </div>
            <!-- /.card-body -->
            

          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>


      </div>
      <div class="modal-footer">
        <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
        <!-- <button type="button" class="btn btn-primary">Send</button> -->
      </div>
    </div>
  </div>
</div>
 <!-- /.listing_doc_viewer_modal -->

<script type="text/javascript">
  $(document).on('click','.listing_doc_viewer_modal_close2',function(){
      $('#listing_doc_viewer_modal2').modal('hide');
  });
</script>

