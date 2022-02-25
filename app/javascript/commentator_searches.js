$(function () {
  //名前検索
  $('#search-name-button').on('click', function () {
    $('.searches').fadeOut('slow');
    $('.name-searches-wrapper').fadeIn('slow');
  });

  //プレイスタイル検索
  $('#search-play-style-button').on('click', function () {
    $('.searches').fadeOut('slow');
    $('.play-style-searches-wrapper').fadeIn('slow');
  });

  //ゲームジャンル検索
  $('#search-game-genre-button').on('click', function () {
    $('.searches').fadeOut('slow');
    $('.game-genre-searches-wrapper').fadeIn('slow');
  });

  //ゲームジャンル検索の親カテ

  // カテゴリーセレクトボックスのオプションを作成
  function appendOption(gamegenre) {
    var html = `<option value="${gamegenre.genre_name}">${gamegenre.genre_name}</option>`
    return html;
  }
  // 子カテゴリーの表示作成
  function appendChildrenBox(insertHTML) {
    var childSelectHTML = '';
    childSelectHTML = `<div id='searches-children-wrapper'>
												<label for="child-game-genre" class="label" id="searches-small-category">小カテゴリー</label>
												<select class="select" id="child-game-genre" name="child_genre_name">
													<option value>選択してください</option>
													${insertHTML}
												</select>
											</div>`;
    $('.game-genre-field').append(childSelectHTML);
  }

  $('#searches-parent-game-genre').on('change', function () {
    var parentGamegenre = $(this).val();
    if (parentGamegenre != "") {
      $.ajax({
        url: 'game_genre_children',
        type: 'GET',
        data: { parent_name: parentGamegenre },
        dataType: 'json'
      })
        .done(function (children) {
          $('#searches-children-wrapper').remove(); //親が変更された時、子以下を削除する
          if (children != "") {
            var insertHTML = '';
            children.forEach(function (child) {
              insertHTML += appendOption(child);
            });
            appendChildrenBox(insertHTML);
          }
        })
        .fail(function () {
          alert('カテゴリー取得に失敗しました');
        })
    } else {
      $('#searches-children-wrapper').remove(); //親カテゴリーが初期値になった時、子以下を削除する
    }
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
