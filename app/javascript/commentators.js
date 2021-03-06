$(function () {
  //詳細ボタン
  //ログイン後
  $('.show-button-2').on('click', function () {
    var index = $(this).val();
    $(`#close-button-${index}`).fadeIn('slow').show();
    $(`#show-button-${index}`).fadeOut('slow');
    $(`#result-r-${index}`).animate({ height: '1100px' }, 400);
    $(`#show-screen-${index}`).slideDown(400);
  });

  //ログイン前
  $('.show-button-3').on('click', function () {
    var index = $(this).val();
    $(`#before-login-close-button-${index}`).fadeIn('slow').show();
    $(`#before-login-show-button-${index}`).fadeOut('slow');
    $(`#result-r-${index}`).animate({ height: '1100px' }, 400);
    $(`#show-screen-${index}`).slideDown(400);
  });

  //閉じるボタン
  //ログイン後
  $('.close-button-2').on('click', function () {
    var index = $(this).val();
    $(`#close-button-${index}`).fadeOut('slow');
    $(`#show-button-${index}`).fadeIn('slow');
    $(`#result-r-${index}`).animate({ height: '380px' }, 400);
    $(`#show-screen-${index}`).slideUp('fast');
  });

  //ログイン前
  $('.close-button-3').on('click', function () {
    var index = $(this).val();
    $(`#before-login-close-button-${index}`).fadeOut('slow');
    $(`#before-login-show-button-${index}`).fadeIn('slow');
    $(`#result-r-${index}`).animate({ height: '380px' }, 400);
    $(`#show-screen-${index}`).slideUp('fast');
  });

  //ログイン後のレビューボタン
  $('.logged-in-review-button').on('click', function () {
    var index = $(this).val();

    //マスクを取得
    var mask = $('.commentators-index-mask').get(index - 1);

    //レビューフォームを取得
    var review_form = $(`#logged-in-review-form-${index}`).get(0);

    mask.classList.remove('hidden');
    review_form.classList.remove('hidden');
  });

  //マスクをクリックしたら、マスクとフォームを非表示
  $('.commentators-index-mask').on('click', function () {
    var index = $(this).attr('id');

    //マスクを取得
    var mask = $('.commentators-index-mask').get(index - 1);
    //レビューフォームを取得

    var review_form = $(`#logged-in-review-form-${index}`).get(0);

    mask.classList.add('hidden');
    review_form.classList.add('hidden');
  });

  //閉じるボタン
  $('.review-close').on('click', function () {
    var index = $(this).attr('id');

    //マスクを取得
    var mask = $('.commentators-index-mask').get(index - 1);

    //レビューフォームを取得
    var review_form = $(`#logged-in-review-form-${index}`).get(0);

    mask.classList.add('hidden');
    review_form.classList.add('hidden');
  });

  //ログイン前のレビューボタン
  $('.not-logged-in-review').on('click', function () {

  });
});
