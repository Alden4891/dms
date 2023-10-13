
$( document ).ready(function() {

    var base = $('base').attr('url');
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
                Swal.fire({
                  icon: 'error',
                  title: 'Oops...',
                  text: 'Please input a valid email address!'
                })
            }
        },
        sortField: "text", // Sort options alphabetically by their text
        preload: true, // Preload options to improve performance
        onChange: function(value) {
            // Your real-time update logic goes here
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

            setTimeout(function() {
                $.ajax(base+'contacts/fetch_list', {
                    type: "POST",
                    error: function(data) {
                      Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'An error has occurred while fetching contacts!!!',
                        footer: 'Please contact <a href="">aaquinones.fo12@dswd.gov.ph</a>'
                      })
                    },
                    success: function(data) {
                        var options = jQuery.parseJSON(data);

                        // Filter options based on the user's input
                        const filteredOptions = options.filter((option) =>
                            option.text.toLowerCase().includes(query.toLowerCase())
                        );

                        // Call the callback function with the filtered options
                        callback(filteredOptions);

                    },
                    complete: function() {

                    }
                });
            }, 100);

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


    $(document).on('click', '.btn-route-send', function (e) {
        e.preventDefault();
        var base = $('base').attr('url');
        var doc_id = $('.routing-form').attr('doc_id');
        var message = $('#summernote2').summernote('code');

        var form = $('.routing-form');
        var routing_form_data = form.serialize();

        if (routing_form_data == '' || message == '' || $('#routing_subject').val().trim() == '') {
          Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Email recepient(s) and message body is required!'
          })

          return;
        }

        // alert('[['+routing_form_data+']]');
        // return;

        routing_form_data = routing_form_data + "&doc_id=" + doc_id + "&message=" + message;

        swal.fire({
          title: "You are about to route documents?",
          text: "Once sent, you will not be able to undo it!",
          icon: "info",
          showCancelButton: true,
          confirmButtonColor: "#3085d6",
          cancelButtonColor: "#d33",
          confirmButtonText: "Yes, send it!",
          cancelButtonText: "No, cancel"
        }).then((result) => {
          if (result.isConfirmed) {
            swal.fire({
              title: "Routing documents! Please wait...",
              html: '<img src="' + base + 'assets/images/mail-sending.gif" style="width: 400px; height: 300px;">',
              showConfirmButton: false,
              allowOutsideClick: false,
              allowEscapeKey: false
            });

            $.ajax(base + 'routing/send/', {
              type: "POST",
              data: routing_form_data,
              error: function (data) {
                Swal.fire({
                  icon: 'error',
                  title: 'Oops...',
                  text: 'An error has occurred!',
                  footer: 'Please contact <a href="">aaquinones.fo12@dswd.gov.ph</a>'
                })
              },
              success: function (data) {
                var send_mail_result = jQuery.parseJSON(data);
                if (send_mail_result.result == 'success') {
                  swal.fire({
                    title: "Congratulation!",
                    text: "You have routed the document successfully!",
                    icon: "success"
                  }).then((result) => {
                    if (result.isConfirmed) {
                      // Redirect to your desired page
                      window.location.href = base+"routing";
                    }
                  });

                  // Additional actions on success can be added here

                } else {

                  Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'An error has occurred!',
                    footer: 'Please contact <a href="">aaquinones.fo12@dswd.gov.ph</a>' 
                  })

                }
              },
              complete: function () {
                //do nothing
              }
            });
          // } else {
          //   swal.fire("Cancelled", "Your imaginary file is safe!", "error");
          }
        });
    });




});

