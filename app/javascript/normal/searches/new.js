$(function () {
	$('.radio-button').on('click', function () {
		//radio-buttonクラスをクリック後の関数処理
		$(this).closest(".q-wrapper").css("display", "none");
		//$("#children_wrapper").css("display", "none");
		//質問画面にあたる親要素div(class="q-wrapper")をdisplay:none;にする
		id = $(this).attr("href");
		//次の質問idをidに格納
		$(id).addClass("fit").fadeIn("slow").show();
		//次の質問にfitをつけて出力。
	});

	//一つ戻るボタン
	$('.back-button').on('click', function () {
		$(this).closest(".q-wrapper").css("display", "none");
		id = $(this).attr("href");
		$(id).addClass("fit").fadeIn("slow").show();
	});

	//詳細ボタン

	$('.show-button').on('click', function () {
		var index = $(this).val();
		$(`#close-button-${index}`).fadeIn('slow').show();
		$(`#show-button-${index}`).fadeOut('slow');
		$(`#show-screen-${index}`).fadeIn('slow');
	});

	$('.close-button').on('click', function () {
		var index = $(this).val();
		$(`#close-button-${index}`).fadeOut('slow');
		$(`#show-button-${index}`).fadeIn('slow');
		$(`#show-screen-${index}`).fadeOut('slow');
	});

	//オススメボタン
	$('#recommendation-button').on('click', function () {
		$(".mini-result-wrapper").css("display", "none");
		$(".recommendation").fadeIn("slow").show();
		$(".twitter").fadeIn("slow").show();
	});
});

