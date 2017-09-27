//= require jquery-2.2.4.min
//= require common_scripts_min
//= require functions
//= require validate
//= require cat_nav_mobile
//= require map
//= require infobox
//= require ion.rangeSlider
//= require theia-sticky-sidebar
//= require jquery_nested_form

$('#cat_nav').mobileMenu();
$(function () {
 'use strict';
 $("#range").ionRangeSlider({
    hide_min_max: true,
    keyboard: true,
    min: 0,
    max: 15,
    from: 0,
    to:5,
    type: 'double',
    step: 1,
    prefix: "Km ",
    grid: true
});
});

jQuery('#sidebar').theiaStickySidebar({
  additionalMarginTop: 80
});

$('#cat_nav a[href^="#"]').on('click', function (e) {
    e.preventDefault();
    var target = this.hash;
    var $target = $(target);
    $('html, body').stop().animate({
        'scrollTop': $target.offset().top - 70
    }, 900, 'swing', function () {
        window.location.hash = target;
    });
});


