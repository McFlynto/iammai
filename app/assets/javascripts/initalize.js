$(document).ready(() => {
  const $scroller = $('.scroller').slick({
    dots: true,
    arrows: false,
    adaptiveHeight: true,
    focusOnSelect: true,
    fade: true
  });

  $scroller.find('.slick-slide').on('click', () => {
    $scroller.slick('slickNext');
  });
})
