$(document).ready(function() {
  // on new document clicked
  $("#btn_upload_document").click(function() {
    $("#documentEntryEditorModal").modal("show");
  });

  // on edit document clicked
  $(document).on('click','#btn_edit_entry',function() {
    var doc_id = $(this).attr('doc_id');
    alert(doc_id);

    //$("#documentEntryEditorModal").modal("show");
  });

  // on route document clicked
  $(document).on('click','#btn_route_entry',function() {
    $("#documentRoutingModal").modal("show");
  });

  // on archive document clicked
  $(document).on('click','#btn_archive_entry',function() {
    $("#documentArchivingModal").modal("show");
  });

  //initialize text editor
  $(function () {
    // Summernote
    $('#summernote').summernote()
    $('#summernote2').summernote()


    // CodeMirror
    CodeMirror.fromTextArea(document.getElementById("codeMirrorDemo"), {
      mode: "htmlmixed",
      theme: "monokai"
    });
  })

  //on document type select
$(document).on('change', '#doctype_selection', function(e) {
  e.preventDefault();
  var doctype = $(this).val();
  var curr_value = $(this).attr('curr-value');
  var formData = $('#form_doc_editor').serializeArray();
  var fn_drn = formData.find(element => element.name === 'fe_drn');
  var fn_title = formData.find(element => element.name === 'fe_title');

  if (fn_drn || fn_title) {
    if (fn_drn?.value || fn_title?.value) {
      if (!confirm('The changes you made will be discarded. Do you want to continue?')) {
        e.stopPropagation();
        this.value = curr_value;
        return false;
      }
    }
  } else {
    console.log('The "fn_drn" field is not found in the form data.');
  }

  // Show loading indicator
  $('#form_object_container').html('<div id="loading_indicator" class="text-center"><img src="images/loading.gif" alt="Loading..." /></div>  ');
  $('#form_editor_remarks_container').addClass('invisible');

  //fetch data and objects; the timer is for testing only
  setTimeout(function() {
    $.ajax('<?=site_url('docEditorModalController/getFormConent')?>', {
      data: {
        doctype: doctype
      },
      type: "POST",
      beforeSend: function(xhr, opts) {
        if (doctype == -1) {
          xhr.abort();
          console.log(" form content request aborted");
          $('#form_object_container').html('');
          $('#form_editor_remarks_container').addClass('invisible');
        }
      },
      error: function(data) {
        console.log(data);
        alert("An error has occurred! Please contact aaquinones.fo12@gmail.com.");
      },
      success: function(data) {
        var obj = jQuery.parseJSON(data);
        $('#form_object_container').html(obj.dom);
        $('#form_editor_remarks_container').removeClass('invisible');
        $('#doctype_selection').attr('curr-value', doctype);
      },
      complete: function() {
        // Hide loading indicator
        $('#form_editor_remarks_container').removeClass('loading');
      }
    });
  }, 100);
});




  $(document).on('change','#fe_drn',function(e){
      e.preventDefault();
      $('#doctype_selection').prop('readyonly', true);
      alert(1);
  });

  // $(document).on('click', '#button_save_form_editor', function() {
  //   $.ajax({
  //     url: 'my-page.php',
  //     type: 'POST',
  //     data: $('#form_doc_editor').serialize(),
  //     success: function(response) {
  //       // Handle the response from the server
  //     },
  //     error: function(jqXHR, textStatus, errorThrown) {
  //       // Handle errors
  //     }
  //   });
  // });



});