

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
                              <td><?php echo $document->STATUS; ?></td>
                              <td>
                                <div class="dropdown">
                                  <button  style="width: 100%;" class="btn btn-secondary dropdown-toggle btn-sm" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   <i class="fas fa-file-prescription"></i> Select
                                  </button>
                                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#" id="btn_edit_entry" ><i class="fas fa-edit"></i> Edit</a>
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




