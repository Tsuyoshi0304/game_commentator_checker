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
});
