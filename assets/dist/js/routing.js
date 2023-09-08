$(document).ready(function() {
	$(document).on('click', '#btn_route_view_trend', function() {
		var base = $('base').attr('url');

		var message_id = $(this).closest('tr').attr('message_id');

        swal.fire({
          title: "Loading document! Please wait...",
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

});