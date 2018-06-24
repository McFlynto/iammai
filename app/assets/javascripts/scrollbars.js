$(document).ready(() => {
  const $scrollbars = $('#grid-container').perfectScrollbar();

  const scrollDiv = document.getElementById('grid-container');

  $('#button-left').on('click', () => {
    scrollDiv.scrollLeft -= 300;
  });
  $('#button-right').on('click', () => {
    scrollDiv.scrollLeft += 300;
  });
})
