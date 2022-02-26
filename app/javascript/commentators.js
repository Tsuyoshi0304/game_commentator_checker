$(function () {
  //詳細ボタン
  $('.show-button-2').on('click', function () {
    var index = $(this).val();
    $(`#close-button-${index}`).fadeIn('slow').show();
    $(`#show-button-${index}`).fadeOut('slow');
    $(`#result-r-${index}`).animate({ height: '1100px' }, 400);
    $(`#show-screen-${index}`).slideDown(400);
  });

  //閉じるボタン
  $('.close-button-2').on('click', function () {
    var index = $(this).val();
    $(`#close-button-${index}`).fadeOut('slow');
    $(`#show-button-${index}`).fadeIn('slow');
    $(`#result-r-${index}`).animate({ height: '380px' }, 400);
    $(`#show-screen-${index}`).slideUp('fast');
  });
});
