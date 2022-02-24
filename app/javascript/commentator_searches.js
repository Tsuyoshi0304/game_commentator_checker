$(function () {
  //名前検索
  $('#search-name-button').on('click', function () {
    $('.searches').fadeOut('slow');
    $('.name-searches-wrapper').fadeIn('slow');
  });

  $('#search-play-style-button').on('click', function () {
    $('.searches').fadeOut('slow');
    $('.play-style-searches-wrapper').fadeIn('slow');
  });

  $('#search-game-genre-button').on('click', function () {
    $('.searches').fadeOut('slow');
    $('.game-genre-searches-wrapper').fadeIn('slow');
  });

  ////似ているボタン
  //$('.similar-button-2').on('click', function () {
  //  var id = $(this).attr('id');
  //  $(".name-search-commentator").css("display", "none");
  //  $(".name-result p").css("display", "none");
  //  $(".similar-commentator").fadeIn("slow").show();
  //});

  //詳細ボタン（似ている実況者ボタン）

  //$('.show-button').on('click', function () {
  //  var index = $(this).val();
  //  $(`#close-button-${index}`).fadeIn('slow').show();
  //  $(`#show-button-${index}`).fadeOut('slow');
  //  $(`#result-r-${index}`).animate({ height: '1130px' }, 400);
  //  $(`#show-screen-${index}`).slideDown(400);
  //});

  //$('.close-button').on('click', function () {
  //  var index = $(this).val();
  //  $(`#close-button-${index}`).fadeOut('slow');
  //  $(`#show-button-${index}`).fadeIn('slow');
  //  $(`#result-r-${index}`).animate({ height: '380px' }, 400);
  //  $(`#show-screen-${index}`).slideUp('fast');
  //});
});
