$(function () {
  $('.hamburger-wrapper').on('click', function () {
    $('.bar1, .bar2, .bar3').toggleClass('open');
    $('.navbar-nav').toggleClass('open');
  });
});
