
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
                                         <select class="" id="email_recepients" name="emails[]" multiple data-placeholder="add email recipients"></select>
                                      </div>
                                    </div>
                                    
                                  </div>

                                  <div class="row">
                                    <div class="col-lg-12">
                                      <div class="input-group mb-3">
                                        <div class="input-group-append">
                                          <label class="input-group-text" for="routing-subject" >S</label>
                                        </div>
                                       <input type="text" id="routing-subject" name="routing-subject" class="form-control routing-form-subject" placeholder="" value="">
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
                               <!-- <li>
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
                            </ul> -->
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
    const select = new TomSelect("#email_recepients", {
        create: function(input, callback) {
            // Check if the input is a valid email address
            if (isValidEmail(input)) {
                // If valid, add the new option
                callback({
                    value: input,
                    text: input
                });
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
            remove_button: {
                title: 'Remove this item',
            }
        },
        onDelete: function(values) {
            return confirm(values.length > 1 ? 'Are you sure you want to remove these ' + values.length + ' items?' : 'Are you sure you want to remove "' + values[0] + '"?');
        },
        load: function(query, callback) {
            // Simulate fetching options from the server
            // Replace this with your actual data retrieval logic
            const options = [{
                    value: "alden.roxy@gmail.com",
                    text: "Alden Quinones"
                },
                {
                    value: "roxy.guibone@gmail.com",
                    text: "Roxy Guibone"
                },
                {
                    value: "roxyeve.quinones@gmail.com",
                    text: "Roxanne Eve G. Quinones"
                },
                {
                    value: "aaquinones.fo12@dswd.gov.ph",
                    text: "Alden Quinones"
                },
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


                return '<button type="button" class="btn btn-outline-dark btn-xs">' + escape(data.text).toUpperCase() + '</button>'
                // return '<span href="#" class="email-entry  badge badge-primary">      '+escape(data.text).toUpperCase()+' </span> &nbsp;&nbsp;&nbsp;';


                // return '<span href="#" class="email-entry badge badge-info badge-pill"> '+escape(data.text).toUpperCase()+' </span> &nbsp;&nbsp;&nbsp;';

                //   return '<div class="alert alert-success" role="alert">' +
                // '    <strong>Hello geeks!</strong>' +
                // '    <button type="button" class="btn close" data-dismiss="alert" aria-label="Close">' +
                // '        <span aria-hidden="true">×</span>' +
                // '    </button>' +
                // '</div>';

            }
        },
    });
  </script>


  <script type="text/javascript">

    $(document).on('click','.btn-route-send',function(e){
      e.preventDefault();
      var base = $('base').attr('url');
      var doc_id = $('.routing-form').attr('doc_id');
      var message = $('#summernote2').summernote('code');

      //load forms
      var form = $('.routing-form');
      var routing_form_data = form.serialize();
      if (routing_form_data == '' || message=='') {
        alert('Email recepient(s) and message body is required!');
        return  
      }
      routing_form_data = routing_form_data + "&doc_id=" + doc_id + "&message="+message;
      console.log(routing_form_data);
      //send email 
      setTimeout(function() {
          $.ajax(base + 'routing/send/', {
              type: "POST",
              data: routing_form_data,
              error: function(data) {
                console.log(data);
                alert("[document-routing] An error has occurred! Please contact aaquinones.fo12@dswd.gov.ph.com.");
              },
              success: function(data) {
                  // var obj_data = jQuery.parseJSON(data);
                alert(data);
                console.log(data);

              },
              complete: function() {

              }
          });
      }, 100);

    });


  </script>
