

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
                      <span class="info-box-number text-center text-muted mb-0"><h2><?=$totals->doc_count?></h2></span>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-4">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">Total number of routed documents</span>
                      <span class="info-box-number text-center text-muted mb-0"><h2><a href="<?=site_url('routing')?>"><?=$totals->route_count?></a></h2></span>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-4">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">Total Number of archived documents</span>
                      <span class="info-box-number text-center text-muted mb-0"><h2><a href="<?=site_url('archive')?>"><?=$totals->archived_count?></a></h2></span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-12">

                  <table id="example1" class="table table-bordered table-striped table-sm">
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
                          <tr doc_id=<?php echo $document->ID; ?>>
                              <td><?php echo $document->DRN; ?></td>
                              <td><?php echo $document->SUBJECT; ?></td>
                              <td><?php echo $document->DATE_POSTED=='0000-00-00 00:00:00'?'no-data':$document->DATE_POSTED; ?></td>
                              <td class="row-status-value"><?php echo $document->STATUS; ?></td>
                              <td>
                                 <div class="dropdown">
                                  <button  style="width: 100%;" class="btn btn-secondary dropdown-toggle btn-sm" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   <i class="fas fa-file-prescription"></i> Option
                                  </button>
                                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

                                    <a class="dropdown-item" href="#" id="btn_view_entry" ><i class="fas fa-eye"></i> View</a>
                                    <a class="dropdown-item" href="#" id="btn_edit_entry" ><i class="fas fa-edit"></i> Edit</a>
                                    <a class="dropdown-item" href="#" id="btn_route_entry"><i class="fas fa-route"></i> Route</a>
                                    <a class="dropdown-item" href="#" id="btn_delete_entry"><i class="fas fa-trash-alt"></i> Delete</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item ch-stat-opt" href="#" status="1"><i class="fas fa-tasks"></i> Mark In Progress</a>
                                    <a class="dropdown-item ch-stat-opt" href="#" status="2"><i class="fas fa-clock"></i> Mark Pending</a>
                                    <a class="dropdown-item ch-stat-opt" href="#" status="3"><i class="fas fa-archive"></i> Mark Forwarded</a>
                                    <a class="dropdown-item ch-stat-opt" href="#" status="4"><i class="fas fa-thumbs-up"></i> Mark Approved</a>
                                    <a class="dropdown-item ch-stat-opt" href="#" status="5"><i class="fas fa-check"></i> Mark Accomplished</a>
                                    <a class="dropdown-item ch-stat-opt" href="#" status="6"><i class="fab fa-expeditedssl"></i> Mark On-hold</a>
                                    <a class="dropdown-item ch-stat-opt" href="#" status="7"><i class="fas fa-window-close"></i> Mark Cancelled</a>

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
              <p class="text-muted">
                Please note that the following list consists of indexes of documents. To search for a specific document, please use the search box located at the upper-right corner of the table.</p>
              <h5 class="text-muted"><b>Indexes:</b>
                <a href="" class="btn-link text-secondary doc-tags" tag=""> <small><i>(display all)</i></small> </a>
              </h5>
              <ul class="list-unstyled">
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-SYS"><i class="fa fa-tag"></i> Three Systems </a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-CMU"><i class="fa fa-tag"></i> Case Management Unit</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-ODC"><i class="fa fa-tag"></i> Office of DC</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-FDS"><i class="fa fa-tag"></i> Family Dev. Sessions</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps GRS"><i class="fa fa-tag"></i> Greivance</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps SEC"><i class="fa fa-tag"></i> Sectoral</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps PCO"><i class="fa fa-tag"></i> PCOs</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-CGU"><i class="fa fa-tag"></i> Cash Grants</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-BDM"><i class="fa fa-tag"></i> BDMD</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-CVS"><i class="fa fa-tag"></i> CVS</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-ICTMS"><i class="fa fa-tag"></i> ICTMS</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-CBU"><i class="fa fa-tag"></i> CBU</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-SMU"><i class="fa fa-tag"></i> SMU</a>
                </li>                
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-PMED"><i class="fa fa-tag"></i> PMED</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-MCCT"><i class="fa fa-tag"></i> MCCT</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-ESSI"><i class="fa fa-tag"></i> ESSI</a>
                </li>
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-PP-HR"><i class="fa fa-tag"></i> Human Resource</a>
                </li>                
                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="4Ps-IPDO"><i class="fa fa-tag"></i> IPDO</a>
                </li>                

                <li>
                  <a href="" class="btn-link text-secondary doc-tags" tag="A-COMM"><i class="fa fa-tag"></i> Others</a>
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

<script type="text/javascript">
$(document).ready(function () {

  $(document).on('click','.doc-tags',function(e){
    e.preventDefault();
    var tag = $(this).attr('tag');
    // $('#example1').remove();
    var table = $('#example1').DataTable();
    var searchTerm = tag;
    table.search(searchTerm).draw();

  });

});
</script>


