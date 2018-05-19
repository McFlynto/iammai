var first = "maike";
var last = "iammai.de";

$(document).ready(() => {
  $('#email-field').html('<a href="mailto:' + first + '@' + last + '">' + first + '@' + last + '<\/a>');
})