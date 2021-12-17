$(function(){
	// カテゴリーセレクトボックスのオプションを作成
	function appendOption(gamegenre) {
		var html = `<option value="${gamegenre.genre_name}">${gamegenre.genre_name}</option>`
		return html;
	}
	// 子カテゴリーの表示作成
	function appendChildrenBox(insertHTML) {
		var childSelectHTML = '';
		childSelectHTML = `<div id='children_wrapper'>
												<label for="child_gamegenre" class="label" id="small-category">小カテゴリー</label>
												<div class='select-wrapper gamegenre'>
													<select class="select" id="child_gamegenre" name="child_genre_name">
														<option value>選択してください</option>
														${insertHTML}
													</select>
												</div>
											</div>`;
		$('.games-genre').append(childSelectHTML);
	}

	$('#parent_gamegenre').on('change', function(){
		var parentGamegenre = document.getElementById('parent_gamegenre').value;
		if (parentGamegenre != ""){
			$.ajax({
				url: 'get_gamegenre_children',
				type: 'GET',
				data: { parent_name: parentGamegenre },
				dataType: 'json'
			})
			.done(function(children){
				$('#children_wrapper').remove(); //親が変更された時、子以下を削除する
				if (children != "" ) {
					var insertHTML = '';
					children.forEach(function(child){
						insertHTML += appendOption(child);
					});
					appendChildrenBox(insertHTML);
				}
			})
			.fail(function(){
				alert('カテゴリー取得に失敗しました');
			})
		}else{
			$('#children_wrapper').remove(); //親カテゴリーが初期値になった時、子以下を削除する
		}
	});
});


