$(function(){
	// ラジオボタンのclickアクション
	//性別ボタン
	$('#radio-button-unknown').on('click', function(){
		$('#btn-male').removeClass('btn-male-active');
		$('#btn-female').removeClass('btn-female-active');
		$('#btn-unknown').toggleClass('btn-unknown-active');
	});

	$('#radio-button-male').on('click', function(){
		$('#btn-unknown').removeClass('btn-unknown-active');
		$('#btn-female').removeClass('btn-female-active');
		$('#btn-male').toggleClass('btn-male-active');
	});

	$('#radio-button-female').on('click', function(){
		$('#btn-unknown').removeClass('btn-unknown-active');
		$('#btn-male').removeClass('btn-male-active');
		$('#btn-female').toggleClass('btn-female-active');
	});
	//グループを組んでいるボタン
	$('#radio-button-is-forming-a-group-true').on('click', function(){
		$('#btn-is-forming-a-group-0').removeClass('btn-is-forming-a-group-0-active');
		$('#btn-is-forming-a-group-1').toggleClass('btn-is-forming-a-group-1-active');
	});

	$('#radio-button-is-forming-a-group-false').on('click', function(){
		$('#btn-is-forming-a-group-1').removeClass('btn-is-forming-a-group-1-active');
		$('#btn-is-forming-a-group-0').toggleClass('btn-is-forming-a-group-0-active');
	});
	//顔出しボタン
	$('#radio-button-appearance-true').on('click', function(){
		$('#btn-appearance-0').removeClass('btn-appearance-0-active');
		$('#btn-appearance-1').toggleClass('btn-appearance-1-active');
	});

	$('#radio-button-appearance-false').on('click', function(){
		$('#btn-appearance-1').removeClass('btn-appearance-1-active');
		$('#btn-appearance-0').toggleClass('btn-appearance-0-active');
	});
	//vtuberボタン
	$('#radio-button-vtuber-true').on('click', function(){
		$('#btn-vtuber-0').removeClass('btn-vtuber-0-active');
		$('#btn-vtuber-1').toggleClass('btn-vtuber-1-active');
	});

	$('#radio-button-vtuber-false').on('click', function(){
		$('#btn-vtuber-1').removeClass('btn-vtuber-1-active');
		$('#btn-vtuber-0').toggleClass('btn-vtuber-0-active');
	});
	//長さボタン
	$('#radio-button-within-30-minutes').on('click', function(){
		$('#btn-length-over-30-minutes').removeClass('btn-length-over-30-minutes-active');
		$('#btn-length-within-30-minutes').toggleClass('btn-length-within-30-minutes-active');
	});
	$('#radio-button-over-30-minutes').on('click', function(){
		$('#btn-length-within-30-minutes').removeClass('btn-length-within-30-minutes-active');
		$('#btn-length-over-30-minutes').toggleClass('btn-length-over-30-minutes-active');
	});
	//単発実況ボタン
	//$('#radio-button-single-shot-main').on('click', function(){
	//	$('#btn-half-and-half-single-shot').removeClass('btn-half-and-half-single-shot-active');
	//	$('#btn-series-main').removeClass('btn-series-main-active');
	//	$('#btn-single-shot-main').toggleClass('btn-single-shot-main-active');
	//});
	//$('#radio-button-half-and-half-single-shot').on('click', function(){
	//	$('#btn-single-shot-main').removeClass('btn-single-shot-main-active');
	//	$('#btn-series-main').removeClass('btn-series-main-active');
	//	$('#btn-half-and-half-single-shot').toggleClass('btn-half-and-half-single-shot-active');
	//});
	//$('#radio-button-series-main').on('click', function(){
	//	$('#btn-single-shot-main').removeClass('btn-single-shot-main-active');
	//	$('#btn-half-and-half-single-shot').removeClass('btn-half-and-half-single-shot-active');
	//	$('#btn-series-main').toggleClass('btn-series-main-active');
	//});
	//ライブボタン
	$('#radio-button-live-main').on('click', function(){
		$('#btn-edit-main').removeClass('btn-edit-main-active');
		$('#btn-live-main').toggleClass('btn-live-main-active');
	});
	$('#radio-button-edit-main').on('click', function(){
		$('#btn-live-main').removeClass('btn-live-main-active');
		$('#btn-edit-main').toggleClass('btn-edit-main-active');
	});
});

