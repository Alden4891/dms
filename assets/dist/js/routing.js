$(document).ready(function() {
	$(document).on('click', '#btn_route_view_trend', function() {
		var base = $('base').attr('url');
		// 
		var message_id = '18a45215b0bc153e';
        //load document attachments
                // alert(1);
        $.ajax(base + 'routing/get_trend_viewer_data/' + message_id, {
            type: "POST",
            error: function(data) {
                console.log(data);
                alert("[4] An error has occurred! Please contact aaquinones.fo12@dswd.gov.ph.com.");
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


            }
        });


	});

});