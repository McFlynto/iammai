$(document).ready(() => {
  $('#nav-toggle').on('click', () => {
    $('#navigation').addClass('navigation__show');
  });
  $('#close-nav').on('click', () => {
    $('#navigation').removeClass('navigation__show');
  });

  $('#button-left').on('click', () => {
    const scrollDiv = document.getElementById('grid-container');
    scrollDiv.scrollLeft -= 300;
  });
  $('#button-right').on('click', () => {
    const scrollDiv = document.getElementById('grid-container');
    scrollDiv.scrollLeft += 300;
  });
})
