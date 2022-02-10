$(function () {
	//プラポリ
	$("#privacy-link").on('click', function () {
		$('#privacy-modal').fadeIn('slow').show();
	});
	//利用規約
	$("#terms-link").on('click', function () {
		$('#terms-modal').fadeIn('slow').show();
	});
	//上の閉じるボタン
	$('.btn-close').on('click', function () {
		$('#contact-modal').fadeOut('slow');
		$('#privacy-modal').fadeOut('slow');
		$('#terms-modal').fadeOut('slow');
	});
	//下の閉じるボタン
	$('.btn2-close').on('click', function () {
		$('#contact-modal').fadeOut('slow');
		$('#privacy-modal').fadeOut('slow');
		$('#terms-modal').fadeOut('slow');
	});
});
