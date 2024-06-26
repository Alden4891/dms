
$(document).ready(function() {
var base = $('base').attr('url');
  //on file select
  $('#customFile').on('change', function() {
      const files = $('#customFile')[0].files;
      const allowedTypes = ['image/jpeg', 'image/png', 'application/pdf'];

      for (let i = 0; i < files.length; i++) {
          const file = files[i];
          const fileType = file.type;

          if (!allowedTypes.includes(fileType)) {
              alert(`Invalid file type: ${fileType}. Only JPG, PNG, and PDF files are allowed.`);
              $('#customFile').val('');
              return;
          }
      }

      displaySelectedFiles();
  });

  $(document).on('change','#fe_drn',function(e){
      e.preventDefault();
      $('#DOC_TYPE').prop('readyonly', true);
  });

  function displaySelectedFiles() {
      const files = $('#customFile')[0].files;

      const fileList = $('#selectedFilesList');
      fileList.empty();

      for (let i = 0; i < files.length; i++) {
          const file = files[i];
          const listItem = $('<li></li>');
          const fileTypeIcon = getFileTypeIcon(file.type);

          listItem.html(`<img src="images/${fileTypeIcon}" alt="${file.type} icon" class="file-icon" width="20px" height="20px"> <small>${file.name}</small>`);
          fileList.append(listItem);
      }
  }

  function getFileTypeIcon(fileType) {
      // Define icons for specific file types here
      // For simplicity, let's assume three file types with corresponding icons
      switch (fileType) {
          case 'image/jpeg':
              return 'jpg-icon.png';
          case 'image/png':
              return 'png-icon.png';
          case 'application/pdf':
              return 'pdf-icon.png';
          case 'text/plain':
              return 'text-icon.png';
          default:
              return 'default-icon.png';
      }
  }

function iferror(value,alt) {
    try{
        return value.split(' ')[0];
    }catch{
        return alt;
    }
}


function decimalToBinary(decimal) {
  var binaryArray = [];

  // Convert decimal to binary
  while (decimal > 0) {
    var remainder = decimal % 2;
    binaryArray.unshift(remainder); // Add remainder to the beginning of the array
    decimal = Math.floor(decimal / 2);
  }

  // Handle the case when the input is 0
  if (binaryArray.length === 0) {
    binaryArray.push(0);
  }

  return binaryArray;
}

  function options_clear() {
      var binaryArray = ["0", "0", "0", "0", "0", "0", "0", "0", "0"];
      $.each(binaryArray, function(index, value) {
          var checkboxClass = '.opt-bin-' + index;
          // Uncheck the checkbox that matches the checkboxClass
          $(checkboxClass).prop('checked', false);
          console.log('clearing: ' + checkboxClass);
      });
  }

  //on view btn_document_preview clicked
  $(document).on('click','#btn_document_preview', function(e){
      e.preventDefault();
      var attachment_id = $(this).attr('attachment-id');
      $('#prev_pdf').attr('src',base+"document/get_document_instance/"+attachment_id+"#view=FitH");
      $('#listing_doc_viewer_modal').modal('show');
  });

  $(document).on('click','.print_pdf',function(e){
      e.preventDefault();
      var link = $(this).attr('href');
      var iframe = document.createElement('iframe');
      iframe.style.display = 'none';
      iframe.src = link;
      document.body.appendChild(iframe);

      iframe.onload = function() {
        iframe.contentWindow.print();
      };
  });

  function printPDF(url) {
    var iframe = document.createElement('iframe');
    iframe.style.display = 'none';
    iframe.src = url;
    document.body.appendChild(iframe);

    iframe.onload = function() {
      iframe.contentWindow.print();
    };
  }


  // on new document clicked
  $("#btn_upload_document").click(function() {
    $('#summernote').summernote('code', '');
    $("#DOC_TYPE").val(-1);
    $('#DOC_TYPE').attr('disabled',false)
    $('#form_object_container').html('');
    $('#form_editor_remarks_container').addClass('invisible');
    $('#DOC_TYPE').attr('curr-value', -1);
    $('.options-container').addClass('invisible')
    options_clear();
    $('.uploaded_file_container').html('');
    //show modal
    $("#documentEntryEditorModal").modal("show");
  });

  // on edit document clicked
  $(document).on('click','#btn_edit_entry',function() {

    //get doc_id
    // var doc_id = $(this).attr('doc_id');
    var doc_id = $(this).closest('tr').attr('doc_id');

    //get doc data
    setTimeout(function() {
        $.ajax(base+'document/data/'+doc_id, {
          type: "POST",
          error: function(data) {
            console.log(data);
            alert("[1] An error has occurred! Please contact aaquinones.fo12@dswd.gov.ph");
          },
          success: function(data) {
            var obj_data = jQuery.parseJSON(data);

            //load form controls
            $.ajax(base+'docEditorModalController/getFormConent', {
              data: {
                doctype: obj_data.DOC_TYPE
              },
              type: "POST",
              // beforeSend: function(xhr, opts) {
              //   if (doctype == -1) {
              //     xhr.abort();
              //     console.log(" form content request aborted");
              //     $('#form_object_container').html('');
              //     $('#form_editor_remarks_container').addClass('invisible');
              //   }
              // },
              error: function(data) {
                console.log(data);
                alert("[2] An error has occurred! Please contact aaquinones.fo12@dswd.gov.ph");
              },
              success: function(data) {

                var obj = jQuery.parseJSON(data);
                $('#form_object_container').html(obj.dom);
                $('#form_editor_remarks_container').removeClass('invisible');
                $('#DOC_TYPE').attr('curr-value', obj_data.DOC_TYPE);
                $('.options-container').removeClass('invisible')

                //disable document type selection
                $("#DOC_TYPE").val(obj_data.DOC_TYPE);
                $('#DOC_TYPE').attr('disabled',true)

                //clear options
                options_clear();

                //load data to the form controls
                $('#ID').val(obj_data.ID);
                $('#DRN').val(obj_data.DRN);
                $('#DATE_POSTED').val(obj_data.DATE_POSTED.split(' ')[0]);
                $('#TIME_POSTED').val(obj_data.DATE_POSTED.split(' ')[1]);
                $('#OBSU').val(obj_data.OBSU);
                $('#STATUS').val(obj_data.STATUS);
                $('#SUBJECT').val(obj_data.SUBJECT);
                $('#SIGNED_BY').val(obj_data.SIGNED_BY);
                $('#RECEIVED_BY').val(obj_data.RECEIVED_BY);
                $('#HANDLER').val(obj_data.HANDLER);

                $('#END_USERS').val(obj_data.END_USERS);
                $('#VENUE').val(obj_data.VENUE);
                $('#AMOUNT').val(obj_data.AMOUNT);
                $('#PARTICIPANTS').val(obj_data.PARTICIPANTS);
                $('#DATE_TARGET').val(obj_data.DATE_TARGET);

                $('#EXP_COMPUTATION').val(obj_data.EXP_COMPUTATION);
                $('#DATE_REVIEWED').val(iferror(obj_data.DATE_REVIEWED,''));
                $('#DATE_INITIALED').val(iferror(obj_data.DATE_INITIALED,''));
                $('#DATE_RECEIVED_COPY').val(iferror(obj_data.DATE_RECEIVED_COPY,''));

                // $('#summernote').text(obj_data.REMARKS);
                $('#summernote').summernote('code', obj_data.REMARKS);

                //load options by Looping through the checkboxes
                var binaryArray = decimalToBinary(obj_data.RESTRICTIONS);
                $.each(binaryArray, function(index, value) {
                   console.log(index + ' : ' + value);
                  var checkboxClass = '.opt-bin-' + (index);
                  var checkbox = $(checkboxClass);

                  // Check the checkbox if the corresponding binary digit is 1
                  if (value === 1) {
                    checkbox.prop('checked', true);
                  } else {
                    checkbox.prop('checked', false);
                  }
                });


                //load uploaded files

                $.ajax({
                  url: base+"document/get_upload_listing/"+obj_data.ID,
                  type: 'POST',
                  processData: false,
                  contentType: false,
                  success: function(response) {
                    $('.uploaded_file_container').html(response);
                  },
                  error: function(xhr, status, error) {
                    console.log(error);
                  }
                });

              },
              complete: function() {
                // Hide loading indicator
                $('#form_editor_remarks_container').removeClass('loading');
              }
            });

          },
          complete: function() {
            // Hide loading indicator
            $('#form_editor_remarks_container').removeClass('loading');
          }
        });
      }, 100);



    //load form controls

    //set data


    $("#documentEntryEditorModal").modal("show");
  });

  // on route document clicked
  $(document).on('click','#btn_route_entry',function() {
    var doc_id = $(this).closest('tr').attr('doc_id');

    //get doc data
    setTimeout(function() {
        $.ajax(base+'document/data/'+doc_id, {
          type: "POST",
          error: function(data) {
            console.log(data);
            alert("[3] An error has occurred! Please contact aaquinones.fo12@dswd.gov.ph.com.");
          },
          success: function(data) {
            var obj_data = jQuery.parseJSON(data);

            //load document information (main form)
            $('.routing-form-subject').val(obj_data.SUBJECT);

            //load document information (details)
            $('.routing-form-drn').html(obj_data.DRN);
            $('.routing-form-date-posted').html(obj_data.DATE_POSTED);
            $('.routing-form-subject').html('re: ' + obj_data.SUBJECT);

            //load document attachments
            $.ajax(base+'document/get_attachments/'+doc_id,{
                type: "POST",
                error: function(data) {
                  console.log(data);
                  alert("[4] An error has occurred! Please contact aaquinones.fo12@dswd.gov.ph.com.");
                },
                success: function (attachment_data) {
                  var obj_att = jQuery.parseJSON(attachment_data);
                  var ht_attachment = "";
                  $('.routing-attachment-container').html(''); //clear entry
                  $.each(obj_att, function(index, row){
                    ht_attachment = "<li><a href='"+base+"document/get_document_instance/"+row.id+"' target=_BLANK class='btn-link text-secondary'><i class='far fa-fw fa-file-word'></i>"+row.org_filename+"</a></li>";
                    $('.routing-attachment-container').append(ht_attachment);

                  });
                }
            });


            // 

            $("#documentRoutingModal").modal("show");
          },
          complete: function() {
            // Hide loading indicator
            // $('#form_editor_remarks_container').removeClass('loading');
          }
        });
      }, 100);

  });

  // on archive document clicked
  $(document).on('click','#btn_archive_entry',function() {
    $("#documentArchivingModal").modal("show");
  });

  //initialize text editor
  $(function () {
    // Summernote
    $('.summernote').summernote(
      {
          toolbar: [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            ['table', ['table']],
            ['link', ['link']],
            ['video', ['video']],
            ['undo', ['undo']],
            ['redo', ['redo']]
          ]
        }
      );


    // CodeMirror
    // CodeMirror.fromTextArea(document.getElementById("codeMirrorDemo"), {
    //   mode: "htmlmixed",
    //   theme: "monokai"
    // });

  })

  //on document type select
$(document).on('change', '#DOC_TYPE', function(e) {
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
    $.ajax(base+'docEditorModalController/getFormConent', {
      data: {
        doctype: doctype
      },
      type: "POST",
      beforeSend: function(xhr, opts) {
        if (doctype == -1) {
          xhr.abort();
          console.log(" form content request aborted");
          $('.options-container').addClass('invisible')

          $('#form_object_container').html('');
          $('#form_editor_remarks_container').addClass('invisible');
        }
      },
      error: function(data) {
        console.log(data);
        alert("[5] An error has occurred! Please contact aaquinones.fo12@dswd.gov.ph");
      },
      success: function(data) {
        var obj = jQuery.parseJSON(data);
        $('#form_object_container').html(obj.dom);
        $('#form_editor_remarks_container').removeClass('invisible');
        $('#DOC_TYPE').attr('curr-value', doctype);
        $('.options-container').removeClass('invisible')

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
      $('#DOC_TYPE').prop('readyonly', true);
  });

   $('#form_doc_editor').submit(function(e) {
      e.preventDefault();

      // var formData = $('#form_doc_editor').serialize();
      // var summernoteContent = $('#summernote').summernote('getCode');


      // Get the serialized form data
      var formData = $('#form_doc_editor').serializeArray();

      // Get the content from Summernote
      var summernoteContent = $('#summernote').summernote('code');
     
      // Add summernoteContent to formData
      formData.push({
        name: 'REMARKS',
        value: summernoteContent
      });

      // Convert the formData array back to serialized form data
      formData = $.param(formData);

      console.log(formData);
      

     
      $.ajax({
        url: base+"document/save",
        type: 'POST',
        data: formData,
        processData: false,  // Prevent jQuery from processing the data
        // contentType: false,  // Prevent jQuery from automatically setting the content type

        beforeSend: function() {
          // Code to run before the request is sent
          // console.log('Before sending the request...');
        },
        success: function(response) {
            // console.log(response);

            //upload documents
            var attachment_count = $('.attached-files')[0].files.length;
            if (attachment_count !== 0) {

              var obj_data = jQuery.parseJSON(response);
              var formData = new FormData($('#form_doc_editor')[0]);

              $.ajax({
                url: base+'document/upload/'+obj_data.doc_id,
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                  console.log(response);
                },
                error: function(xhr, status, error) {
                  console.log(error);
                }
              });
            }


           $("#documentEntryEditorModal").modal("hide");
          // console.log('Request succeeded!');
          // console.log(response);
        },
        error: function(xhr, status, error) {
          // Code to run when the request encounters an error
          console.log('Request failed!');
          console.log('Error:', xhr);
        },
        complete: function() {
          // Code to run regardless of success or failure
          // console.log('Request completed.');
          e.preventDefault();
        }
      });

  });

});

