jQuery(document).ready(function($) {
  "use strict";

  //Contact
  $('form.contactusForm').submit(function(event) {
    event.preventDefault();
    var this_form = $(this);
    var token = this_form.find('input[name=_token]').val();
    var url = this_form.attr('action');
    var data = {};
    $.each(this, function(i, v){
        var input = $(v);
        data[input.attr("name")] = input.val();
        delete data["undefined"];
    });

    $.ajax({
      url: url,
      type: 'POST',
      headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
      data: data,
      success: function (data) {
          if (data=='ok') {
            this_form.find('.form-row').remove();
            $('#sendmessage').fadeIn();
            this_form.find('button[type=submit]').attr('disabled', 'true');
            this_form.find('button[type=submit]').css('cursor', 'not-allowed');
          } else {
              alert('Whoops Something went wrong!!');
          }
      },
      error: function (data) {
          alert(data.responseText);
      }
    });

    return false;
  });

});
