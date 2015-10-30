$(document).ready(function () {
  $('#userform').submit(function (e) {
    user = {
      first_name: $('#firstname').val(),
      last_name: $('#lastname').val(),
      email: $('#email').val(),
      social_security: $('#socialsecurity').val(),
    }
    console.log(user);
    e.preventDefault();
  })
});
