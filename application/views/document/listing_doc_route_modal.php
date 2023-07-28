
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
                                  <!-- <select id="myDropdown" name="emails" multiple width="100%" ></select> -->

                                <div class="row">
                                  <div class="col-lg-12" >
                                    <div class="input-group mb-3" >
                                      <div class="input-group-prepend">
                                        <label class="input-group-text" for="inputGroupSelect01">@</label>
                                      </div>
                                      <select class="form-control" id="myDropdown" name="emails" multiple style="border: none;" ></select>
                                    </div>

                                  </div>
                                  <div class="col-lg-12">
                                    <div class="input-group mb-3">
                                      <div class="input-group-append">
                                        <label class="input-group-text" for="inputGroupSelect02">S</label>
                                      </div>
                                     <input type="text" class="form-control" placeholder="" value="RE: Umnibus guideline on the utiliztion of document management system">
                                    </div>

                                  </div>



                                  
                                </div>


<!--                             <div class="row ">
                                 <div class="col-lg-12">
                                  <div class="input-group">
                                     <div class="input-group-prepend">
                                        <span class="input-group-text">SUBJECT</span>
                                     </div>
                                     <input type="text" class="form-control" placeholder="" value="RE: Umnibus guideline on the utiliztion of document management system">
                                  </div>
                                </div>
                            </div>


                            <div class="row ">
                                 <div class="col-lg-12">
                                  <div class="input-group">
                                     <div class="input-group-prepend">
                                        <span class="input-group-text">SUBJECT</span>
                                     </div>
                                     <input type="text" class="form-control" placeholder="" value="RE: Umnibus guideline on the utiliztion of document management system">
                                  </div>
                                </div>
                            </div>

                            <br> -->
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


  <script src="https://cdn.jsdelivr.net/npm/tom-select@2.2.2/dist/js/tom-select.complete.min.js"></script>
  <script>
    // Custom validation function to check if the input is a valid email address
    function isValidEmail(input) {
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return emailRegex.test(input);
    }

    // Custom rendering function for the dropdown options
    function renderOption(data, escape) {
      // Customize the appearance of the options here
      return `<div>${escape(data.text)} - ${escape(data.value)}</div>`;
    }

    // Initialize Tom Select with the options
    const select = new TomSelect("#myDropdown", {
      create: function(input, callback) {
        // Check if the input is a valid email address
        if (isValidEmail(input)) {
          // If valid, add the new option
          callback({ value: input, text: input });
        } else {
          // If not valid, show an error message (optional)
          alert("Please enter a valid email address.");
        }
      },
      sortField: "text", // Sort options alphabetically by their text
      preload: true, // Preload options to improve performance
      onChange: function(value) {
        // Your real-time update logic goes here
        console.log("Selected values:", value);
      },
      plugins: {
        remove_button:{
          title:'Remove this item',
        }
      },  
      onDelete: function(values) {
        return confirm(values.length > 1 ? 'Are you sure you want to remove these ' + values.length + ' items?' : 'Are you sure you want to remove "' + values[0] + '"?');
      },
      load: function(query, callback) {
        // Simulate fetching options from the server
        // Replace this with your actual data retrieval logic
        const options = [
          { value: "alden.roxy@gmail.com", text: "Alden Quinones" },
          { value: "roxy.guibone@gmail.com", text: "Roxy Guibone" },
          { value: "roxyeve.quinones@gmail.com", text: "Roxanne Eve G. Quinones" },
          { value: "aaquinones.fo12@dswd.gov.ph", text: "Alden Quinones" },
        ];

        // Filter options based on the user's input
        const filteredOptions = options.filter((option) =>
          option.text.toLowerCase().includes(query.toLowerCase())
        );

        // Call the callback function with the filtered options
        callback(filteredOptions);
      },

      render: {
        option: function(data, escape) {
          return '<div>' +
                  '<span class="title"><strong>' + escape(data.text) + '</strong></span><br>' +
                  '<span class="url"><small>' + escape(data.value) + '</small></span>' +
                '</div>';
        },
        item: function(data, escape) {
          // return '<span title="' + escape(data.value) + '" class="badge badge-pill badge-success">' + escape(data.text).toUpperCase() + '</span>';
          return '<span href="#" class="email-entry badge badge-info badge-pill"> '+escape(data.text).toUpperCase()+' </span> &nbsp;&nbsp;&nbsp;';

        //   return '<div class="alert alert-success" role="alert">' +
        // '    <strong>Hello geeks!</strong>' +
        // '    <button type="button" class="btn close" data-dismiss="alert" aria-label="Close">' +
        // '        <span aria-hidden="true">×</span>' +
        // '    </button>' +
        // '</div>';

        }
      }
      ,
    });
  </script>
</form>
</body>
</html>
<script type="text/javascript">
  $(document).on('click','.btn-save',function(e){
    e.preventDefault();

    var form = $('.test-form');
    var data2 = form.serialize();
    if (data2 != '') {
      alert(data2);  
    }
    

  });


</script>
