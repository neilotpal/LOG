(function($) {
  "use strict"
  $('.navbar-toggle-btn').on('click', function() {
    $('.navbar-menu').toggleClass('navbar-menu-active');
  });
  $('.search-toggle-btn').on('click', function() {
    $('.navbar-search').toggleClass('navbar-search-active');
  });
  $('.navbar-menu .has-dropdown > a').on('click', function(e) {
    e.preventDefault();
    $(this).parent().toggleClass('dropdown-active');
  });
  $('#home-owl').owlCarousel({
    items: 1,
    loop: true,
    autoplay: true,
    margin: 0,
    nav: true,
    dots: true,
    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>']
  });
  $('#testimonial-owl').owlCarousel({
    loop: true,
    margin: 15,
    dots: true,
    nav: false,
    autoplay: true,
    responsive: {
      0: {
        items: 1
      },
      992: {
        items: 2
      }
    }
  });
  $.stellar({
    responsive: true
  });
})(jQuery);
