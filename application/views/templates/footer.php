    
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2023 <a href="https://fo12.dswd.gov.ph">4Ps-DSWD-XII</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.2.0
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="<?=site_url('assets')?>/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?=site_url('assets')?>/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?=site_url('assets')?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="<?=site_url('assets')?>/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="<?=site_url('assets')?>/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<!-- <script src="<?=site_url('assets')?>/plugins/jqvmap/jquery.vmap.min.js"></script> -->
<!-- <script src="<?=site_url('assets')?>/plugins/jqvmap/maps/jquery.vmap.usa.js"></script> -->
<!-- jQuery Knob Chart -->
<script src="<?=site_url('assets')?>/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="<?=site_url('assets')?>/plugins/moment/moment.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<?=site_url('assets')?>/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="<?=site_url('assets')?>/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?=site_url('assets')?>/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="<?=site_url('assets')?>/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?=site_url('assets')?>/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="<?=site_url('assets')?>/dist/js/pages/dashboard.js"></script> -->
<!-- CodeMirror -->
<script src="<?=site_url('assets')?>/plugins/codemirror/codemirror.js"></script>
<script src="<?=site_url('assets')?>/plugins/codemirror/mode/css/css.js"></script>
<script src="<?=site_url('assets')?>/plugins/codemirror/mode/xml/xml.js"></script>
<script src="<?=site_url('assets')?>/plugins/codemirror/mode/htmlmixed/htmlmixed.js"></script>

<!-- DataTables  & Plugins -->
<script src="<?=site_url('assets')?>/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/jszip/jszip.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/pdfmake/pdfmake.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/pdfmake/vfs_fonts.js"></script>
<script src="<?=site_url('assets')?>/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="<?=site_url('assets')?>/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>



</body>
</html>

<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });


    //logout function
    $('.logout-menu').click(function() {
        Swal.fire({
            title: "Logout",
            text: "Are you sure you want to logout?",
            icon: "question",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, logout",
            cancelButtonText: "Cancel"
        }).then((result) => {
            if (result.isConfirmed) {
                // Redirect to the logout URL or perform logout action
                // You can replace this with your actual logout logic
                window.location.href = "user/logout"; // Replace with your logout URL
            }
        });
    });
  });
</script>
</body>
</html>
