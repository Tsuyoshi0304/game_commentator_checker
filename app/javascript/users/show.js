$(function () {
  //詳細ボタン
  $('.down-button-wrapper').on('click', function () {
    var index = $(this).val();
    $(`#diagnosis-contents-${index}`).slideDown(400);
    $(`#angle-down-${index}`).fadeOut(400);
    $(`#angle-up-${index}`).fadeIn(400);
    $(this).closest('.diagnosis-count').css('border', 'none');
  });

  $('.up-button-wrapper').on('click', function () {
    var index = $(this).val();
    $(`#diagnosis-contents-${index}`).slideUp(400);
    $(`#angle-down-${index}`).fadeIn(400);
    $(`#angle-up-${index}`).fadeOut(400);
    $(this).closest('.diagnosis-count').css('border-bottom', '1px solid black');
  });
});
