$(function () {
  //コメント詳細ボタン
  //show
  $('.ranking-show-button').on('click', function () {
    var index = $(this).val();
    var height = $(`#ranking-wrapper-${index}`).height() + $(`#show-comment-${index}`).height() + 50;
    $(`#ranking-close-button-${index}`).fadeIn('slow');
    $(`#ranking-show-button-${index}`).fadeOut('slow');
    $(`#ranking-wrapper-${index}`).animate({ height: height }, 400);
    $(`#show-comment-${index}`).slideDown(400);
  });

  //close
  $('.ranking-close-button').on('click', function () {
    var index = $(this).val();
    $(`#ranking-close-button-${index}`).fadeOut('slow');
    $(`#ranking-show-button-${index}`).fadeIn('slow');
    $(`#ranking-wrapper-${index}`).animate({ height: '380px' }, 400);
    $(`#show-comment-${index}`).slideUp(400);
  });
});
