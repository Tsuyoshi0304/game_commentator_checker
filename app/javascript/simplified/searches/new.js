$(window).on('load', function() {
	$('#slider').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		adaptiveHeight: true,
		autoplaySpeed: 1000
	});
});

$(function() {
	$('.radio-button').on('click', function() {
		//radio-buttonクラスをクリック後の関数処理
		$(this).closest(".q-wrapper").css("display", "none");
		//質問画面にあたる親要素div(class="q-wrapper")をdisplay:none;にする
		id = $(this).attr("href");
		//次の質問idをidに格納
		$(id).addClass("fit").fadeIn("slow").show();
		//次の質問にfitをつけて出力。
	});
});
