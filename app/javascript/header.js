$(function () {
  $('.hamburger-wrapper, .header-mask').on('click', function () {
    $('.bar1, .bar2, .bar3').toggleClass('open');
    $('.navbar-nav').toggleClass('open');
    $('.header-mask').toggleClass('hidden');
  });
});
