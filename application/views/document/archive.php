

<?php

  // print($route_listing);

  // return;
?>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">File Recover Moduke</h3>

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
                <div class="col-12">

                  <table id="example1" class="table table-bordered table-striped table-sm">
                    <thead>
                    <tr>
                      <th>DRN</th>
                      <th>Subject</th>
                      <th>Date Deleted</th>
                      <th>Deleted by</th>
                      <th>Option</th>
                    </tr>
                    </thead>
                    <tbody>
                      <?=$listing?>
                      

                    </tbody>

                  </table>

                </div>
              </div>
            </div>
            <div class="col-12 col-md-12 col-lg-3 order-1 order-md-2">
              <h3 class="text-primary"><i class="fas fa-paint-brush"></i>Note:</h3>
              <p class="text-muted">
                Welcome to the File Recovery Module, the ultimate solution for efficient file management and data restoration. This module is designed to help you recover deleted files with ease and precision, ensuring that your valuable data is never permanently lost.

              </p>

              <strong>How to Use:</strong>

                <ol>
                  <li>Navigate to the "File Recovery Module" from the app's main menu.</li>
                  <li>Choose your search criteria, such as file type, date range, or keywords.</li>
                  <li>Preview the recovered files to ensure they're the ones you need.</li>
                  <li>Select the files you want to recover.</li>
                  <li>Click "Restore" to retrieve your data safely.</li>
                </ol>

              <br>


              <div class="text-center mt-5 mb-3">

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




