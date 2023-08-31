

<?php

  // print($route_listing);

  // return;
?>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Index of Routed Documents</h3>

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
                      <span class="info-box-text text-center text-muted">Total Number of routed documents</span>
                      <span class="info-box-number text-center text-muted mb-0">2300</span>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-4">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">Responded Routes with responses</span>
                      <span class="info-box-number text-center text-muted mb-0">2000</span>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-4">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">Over due</span>
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
                      <th>DRN</th>
                      <th>Subject</th>
                      <th>Date Sent</th>
                      <th>Age/Duration</th>
                      <th>Status</th>
                      <th>Flag</th>
                      <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                      <?=$route_listing?>


                    </tbody>
<!--                     <tfoot>
                    <tr>
                      <th>Document DRN</th>
                      <th>Document Subject</th>
                      <th>Date stated in the document</th>
                      <th>Status of the document</th>
                      <th>&nbsp;</th>
                    </tr>
                    </tfoot> -->
                  </table>

                </div>
              </div>
            </div>
            <div class="col-12 col-md-12 col-lg-3 order-1 order-md-2">
              <h3 class="text-primary"><i class="fas fa-paint-brush"></i>Note:</h3>
              <p class="text-muted">
                This page contains documents routed to specific person(s)

                To access the content or view respondents' replies, simply click on the "View" button located at the end of each entry. In the event that a respondent fails to reply within the designated timeframe, the entry will be visually highlighted in red, indicating the urgency of the matter.

              </p>
              <br>


              <div class="text-center mt-5 mb-3">
                <a href="#" class="btn btn-sm btn-primary" id="btn_force_update">RE-CHECK FOR UPDATES</a>
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




