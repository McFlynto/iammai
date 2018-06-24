$(document).ready(() => {
  $('#nav-toggle').on('click', () => {
    $('#navigation').addClass('navigation__show');
  });
  $('#close-nav').on('click', () => {
    $('#navigation').removeClass('navigation__show');
  });
})
