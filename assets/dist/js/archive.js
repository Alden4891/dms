$(document).ready(function() {
    var base = $('base').attr('url');

    // on view clicked
    $(document).on('click','#preview',function(){
        var doc_id = $(this).closest('tr').attr('doc_id');

        //get doc data
        setTimeout(function() {
            $.ajax(base + 'document/get_viewer_content/' + doc_id, {
                type: "POST",
                error: function(data) {
                    console.log(data);
                    alert("[1] An error has occurred! Please contact aaquinones.fo12@dswd.gov.ph");
                },
                success: function(data) {
                    var obj_data = jQuery.parseJSON(data);

                    console.log(obj_data.default_url);
                    $('.doc-viewer-attanment-list-container').html(obj_data.attachment_list);
                    $('#prev_pdf2').attr('src',obj_data.default_url)
                    $('#listing_doc_viewer_modal2').modal("show");

                },
                complete: function() {
                    // Hide loading indicator

                }
            });
        }, 100);



        // var attachment_id = $(this).attr('attachment-id');
        // $('#prev_pdf2').attr('src', base + "document/get_document_instance/113");
        // $('#listing_doc_viewer_modal').modal('show');        
        
    });


    $(document).on('click', '#restore-button',function(e){
        e.preventDefault();
        var handle = $(this);
        var doc_id = handle.closest('tr').attr('doc_id');
        var tr = handle.closest('tr');
        var src = tr.attr('src');

        Swal.fire({
          title: 'Are you sure?',
          text: "You are about to restore this document!",
          icon: 'question',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Yes, restore it!'
        }).then((result) => {
          if (result.isConfirmed) {
            setTimeout(function() {
                $.ajax(base + 'archive/restore/'+src+'/'+doc_id, {
                    type: "POST",
                    error: function(data) {
                        console.log(data);
                        alert("[5] An error has occurred! Please contact aaquinones.fo12@dswd.gov.ph");
                    },
                    success: function(data) {
                        var obj = jQuery.parseJSON(data);
                        if (obj.success) {
                            tr.fadeOut(400, function() {
                              tr.remove(); 
                            });
                        }
                    },
                    complete: function() {
                        //do nothing
                    }
                });
            }, 100);
          }
        })



    });


});