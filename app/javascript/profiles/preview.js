$(function () {
  $('#avatar-set').on('change', function () {
    $('#preview').remove();
    var file = $('#avatar-set').prop('files')[0];
    var reader = new FileReader();
    reader.onloadend = function () {
      $('.profile-edit-avatar').append('<img src="' + reader.result + '" id="preview">');
    }
    reader.readAsDataURL(file);
  });
});

