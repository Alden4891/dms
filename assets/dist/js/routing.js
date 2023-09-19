$(document).ready(function() {
	var base = $('base').attr('url');

function formatDateTime(inputString, day_offset = 0) {
  // Parse the input string as a Date
  const inputDate = new Date(inputString);

  // Check if the inputDate is a valid Date object
  if (isNaN(inputDate)) {
    return "Invalid Date";
  }

  // Define months and get the month name
  const months = [
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
  ];
  const monthName = months[inputDate.getMonth()];

  // Get the date components
  const day = inputDate.getDate();
  const year = inputDate.getFullYear();

  // Get the time components
  let hours = inputDate.getHours();
  const minutes = inputDate.getMinutes();
  const ampm = hours >= 12 ? 'PM' : 'AM';
  hours = hours % 12;
  hours = hours ? hours : 12; // Convert 0 to 12 for 12-hour clock

  // Calculate the new date
  const newDate = new Date(inputDate);
  newDate.setDate(newDate.getDate() + day_offset);

  // Format the output string
  const formattedString1 = `${months[newDate.getMonth()]} ${newDate.getDate()}, ${newDate.getFullYear()} at ${hours}:${(minutes < 10 ? '0' : '')}${minutes}:${newDate.getSeconds()} ${ampm}`;
	const formattedString2 = `${months[newDate.getMonth()]} ${newDate.getDate()}, ${newDate.getFullYear()}`;

  if (day_offset == 0) {
  	return formattedString1;
  }else{
  	return formattedString2;	
  }


  return formattedString;
}

	//--------------------------------------------------------------------
	$(document).on('click','#btn_force_update',function(e){
		e.preventDefault();
				

		Swal.fire({
		  title: 'Are you sure?',
		  text: "You are about to fetch updates from all active routes! This will take a while.",
		  icon: 'question',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes, update it!'
		}).then((result) => {
		  if (result.isConfirmed) {
		    swal.fire({
		      title: "Fetching information! Please wait...",
		      html: '<img src="' + base + 'assets/images/mail-sending.gif" style="width: 400px; height: 300px;">',
		      showConfirmButton: false,
		      allowOutsideClick: false,
		      allowEscapeKey: false
		    });

			    setTimeout(function() {

			        //load document attachments
			        $.ajax(base + 'routing/get_all_tread', {
			            type: "POST",
			            error: function(data) {
			                console.log(data);

			                Swal.fire({
			                  icon: 'error',
			                  title: 'Oops...',
			                  text: 'An error has occurred!',
			                  footer: 'Please contact <a href="">aaquinones.fo12@dswd.gov.ph</a>'
			                })

			            },
			            success: function(data) {
			                var res = jQuery.parseJSON(data);
			                if (res.success) {
												Swal.fire({
												    title: "Congratulation!",
												    text: "Fetching updates successfully! The page will reload automatially.",
												    icon: "success",
												    confirmButtonText: "OK"
												}).then((result) => {
												    if (result.isConfirmed) {
												        // Reload the page
												        window.location.reload();
												    }
												});


			                }
			            }
			        });

				}, 1000);
		  }
		})

	});

	$(document).on('click', '#btn_route_view_trend', function() {
		var base = $('base').attr('url');
		var message_id = $(this).closest('tr').attr('message_id');

    swal.fire({
      title: "Fetching information! Please wait...",
      html: '<img src="' + base + 'assets/images/mail-sending.gif" style="width: 400px; height: 300px;">',
      showConfirmButton: false,
      allowOutsideClick: false,
      allowEscapeKey: false
    });

	    setTimeout(function() {


	        //load document attachments
	        $.ajax(base + 'routing/get_trend_viewer_data/' + message_id, {
	            type: "POST",
	            error: function(data) {
	                console.log(data);

	                Swal.fire({
	                  icon: 'error',
	                  title: 'Oops...',
	                  text: 'An error has occurred!',
	                  footer: 'Please contact <a href="">aaquinones.fo12@dswd.gov.ph</a>'
	                })

	            },
	            success: function(attachment_data) {
	                var ohtx = jQuery.parseJSON(attachment_data);
	                console.log(ohtx.timeline);

	                $('.timeline-container').html(ohtx.timeline);
	                $('.timeline-container').html(ohtx.timeline);
	                
									$('.trends-modal-viewer-status').html(ohtx.status);
									$('.trends-modal-viewer-response').html(ohtx.response);
									$('.trends-modal-viewer-datesent').html(ohtx.datesent);
									$('.trends-modal-viewer-subject').html(ohtx.subject);
									$('.trends-modal-viewer-drn').html(ohtx.drn);
					               
									$('#routing_trends_viewer_modal').modal("show");

									swal.close();

	            }
	        });
		}, 1000);
	});

	//[MARK DONE] ----------------------------------------------------------------------------------------------------------------------

	$(document).on('click','#btn_route_mark_done',function(e){
		e.preventDefault(0);
		var tr = $(this).closest('tr');
		var message_id = tr.attr('message_id');

    //load document attachments
    $.ajax(base + 'routing/close/' + message_id, {
        type: "POST",
        error: function(data) {
            console.log(data);

            Swal.fire({
              icon: 'error',
              title: 'Oops...',
              text: 'An error has occurred!',
              footer: 'Please contact <a href="">aaquinones.fo12@dswd.gov.ph</a>'
            })

        },
        success: function(data) {
            var obj = jQuery.parseJSON(data);
            if (obj.success) {
							Swal.fire({
							    title: "Congratulation!",
							    text: "Route marked as accomplished successfully! The page will reload automatically.",
							    icon: "success",
							    confirmButtonText: "OK"
							}).then((result) => {
							    if (result.isConfirmed) {
							        // Reload the page
							        window.location.reload();
							    }
							});
            }
        }
    });


	});


  // [BEGIN: SEND REPLY]--------------------------------------------------------------------------------------------------------------
  // Dynamically create and append the custom CSS
  const customCss = `
      /* Custom CSS to adjust the width of the Swal2 dialog */
      .swal2-popup {
          width: 60%;
      }

      /* Custom CSS to style the editor container */
      #editor-container {
          margin: 20px;
      }
  `;
  const styleElement = document.createElement('style');
  styleElement.type = 'text/css';
  styleElement.appendChild(document.createTextNode(customCss));
  document.head.appendChild(styleElement);

  $(document).on('click','.send_reply',function(e) {
      e.preventDefault();
      var handler = $(this);
      var message_id = handler.closest('tr').attr('message_id');


	    $.ajax(base + 'fetch/route_info/'+message_id, {
	      type: "POST",
	      error: function (data) {
	        Swal.fire({
	          icon: 'error',
	          title: 'Oops...',
	          text: data,
	          footer: 'Please contact <a href="">aaquinones.fo12@dswd.gov.ph</a>'
	        });
	       	
	      },
	      success: function (data) {
	        swal.close();
	        var obj = jQuery.parseJSON(data);

	        //-------------------
			      //start swal modal
			      let editor; // Define the editor variable
			      Swal.fire({
			          title: 'Compose follow-up message',
			          // html: '<div id="editor-container"><textarea id="html-editor">Good day,<br><br>This message is a follow-up on the feedback on the document with DRN# '+ obj.DRN +'.  The document was routed on '+formatDateTime(obj.DATE_ROUTE)+'. We kindly request your feedback, which is expected to be received by '+formatDateTime(obj.DATE_ROUTE,7)+'. <br><br>DC</textarea></div>',
			          html: '<div id="editor-container"><textarea id="html-editor">Good day,<br><br>  This message serves as a follow-up to the feedback request regarding the document with DRN# 4Ps-PP-test2. The document was initially routed on '+formatDateTime(obj.DATE_ROUTE)+', and we had anticipated receiving your feedback by '+formatDateTime(obj.DATE_ROUTE,3)+'. Your prompt response is greatly appreciated.  <br><br>DC</textarea></div>',

			          showCancelButton: true,
			          showConfirmButton: true,
			          allowOutsideClick: false, // Prevent closing when clicking outside
			          confirmButtonText: '<i class="fas fa-check"></i> Send', // Send button with an icon
			          cancelButtonText: '<i class="fas fa-times"></i> Cancel', // Cancel button with an icon
			          preConfirm: function () {
			              return new Promise(function (resolve) {
			                  const editedText = editor.getData();
			                  if (!editedText.trim()) {
			                      Swal.showValidationMessage("Haven't created your message yet");
			                      Swal.enableButtons();
			                  } else {
			                      resolve(editedText);
			                  }
			              });
			          },
			          onOpen: function () {
			              // Initialize CKEditor when opening the dialog
			              ClassicEditor
			                  .create(document.querySelector('#html-editor'), {
			                      toolbar: [
			                          'heading',
			                          '|',
			                          'bold',
			                          'italic',
			                          'underline',
			                          'link',
			                          'bulletedList',
			                          'numberedList',
			                          'blockQuote',
			                          'outdent', // Decrease Indent
			                          'indent'   // Increase Indent
			                      ]
			                  })
			                  .then(ckEditor => {
			                      editor = ckEditor; // Store the editor instance
			                  })
			                  .catch(error => {
			                      console.error(error);
			                  });
			          },
			          onClose: function () {
			              // Destroy CKEditor when closing the dialog
			              // if (editor) {
			                  // editor.destroy();
			              // }
			              // Rebind the click event to the "Open Editor" button after the dialog is closed
			              // $('.send_reply').click(openHtmlEditor);
			          }
			      }).then(function (result) {
			          if (result.isConfirmed) {
			              // Handle the HTML content (result.value) here
			              Swal.close();
			              // Display the typed text in an alert
			              // alert("Typed text:\n" + result.value);
			              var message_data = {
			              	tread_id:message_id,
											message_body:result.value,
			              };


								    swal.fire({
								      title: "Sending... Please wait...",
								      html: '<img src="' + base + 'assets/images/mail-sending.gif" style="width: 400px; height: 300px;">',
								      showConfirmButton: false,
								      allowOutsideClick: false,
								      allowEscapeKey: false
								    });

								    $.ajax(base + 'routing/reply', {
								        type: "POST",
								        data: message_data,
								        error: function(data) {

								            Swal.fire({
								              icon: 'error',
								              title: 'Oops...',
								              text: data,
								              footer: 'Please contact <a href="">aaquinones.fo12@dswd.gov.ph</a>'
								            })

								            return false;

								        },
								        success: function(data) {
													//on email send success	
					                swal.fire({
					                    title: "Congratulation!",
					                    text: "Message sent!",
					                    icon: "success"
					                });
								        	
								        }
								    });	



			          } else if (result.dismiss === Swal.DismissReason.cancel) {
			              console.log("Cancelled");
			          }
			      });
			      // Unbind the click event from the "Open Editor" button to avoid multiple bindings
			      // $('.send_reply').off('click', openHtmlEditor);
			  

	        //\------------------



	      }
	    });

	});


  // [BEGIN: SEND REPLY]------------------------------------------------------------------------------------------------------------------------------------------------------------


});