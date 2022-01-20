$(function () {
	$('.radio-button').on('click', function () {
		//radio-buttonクラスをクリック後の関数処理
		$(this).closest(".q-wrapper").css("display", "none");
		//質問画面にあたる親要素div(class="q-wrapper")をdisplay:none;にする
		id = $(this).attr("href");
		//次の質問idをidに格納
		$(id).addClass("fit").fadeIn("slow");
		//次の質問にfitをつけて出力。
	});

	//一つ戻るボタン
	$('.back-button').on('click', function () {
		$(this).closest(".q-wrapper").css("display", "none");
		id = $(this).attr("href");
		$(id).addClass("fit").fadeIn("slow");
	});

	//詳細ボタン

	$('.show-button').on('click', function () {
		var index = $(this).val();
		$(`#close-button-${index}`).fadeIn('slow');
		$(`#show-button-${index}`).fadeOut('slow');
		$(`#result-r-${index}`).animate({ height: '1130px' }, 400);
		$(`#show-screen-${index}`).slideDown(400);
	});

	$('.close-button').on('click', function () {
		var index = $(this).val();
		$(`#close-button-${index}`).fadeOut('slow');
		$(`#show-button-${index}`).fadeIn('slow');
		$(`#result-r-${index}`).animate({ height: '380px' }, 400);
		$(`#show-screen-${index}`).slideUp('fast');
	});

	//オススメボタン
	$('#recommendation-button').on('click', function () {
		$(".mini-result-wrapper").css("display", "none");
		$(".recommendation").fadeIn("slow").show();
		$(".twitter-wrapper").fadeIn("slow").show();
	});
});
