
<!-- .listing_doc_viewer_modal -->
<div class="modal fade" id="listing_doc_viewer_modal"  tabindex="2" role="dialog" role="dialog" aria-labelledby="listing_doc_viewer_modalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog modal-dialog-centered" style="max-width: 80%;" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="listing_doc_viewer_modalLabel">Document Viewer</h5>
        <button type="button" class="close listing_doc_viewer_modal_close" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <!-- Default box -->
        <div class="card">

          <div class="card-body">
            <div class="row">
              <div class="col-12 col-md-12 col-lg-12 order-2 order-md-1">

                <div class="row">
                  <div class="col-12">
                      
     
                        <iframe id=prev_pdf name=prev_pdf width="100%" height="750px"></iframe>


                  </div>
                </div>
              </div>
<!--               <div class="col-12 col-md-12 col-lg-3 order-1 order-md-2">
                <h3 class="text-primary"><i class="fas fa-paint-brush"></i>Document Information:</h3>

                <p class="text-muted">
                    doc info here
                    
                </p>

              </div> -->
            </div>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
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
  $(document).on('click','.listing_doc_viewer_modal_close',function(){
      $('#listing_doc_viewer_modal').modal('hide');
  });
</script>

