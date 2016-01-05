// main js page

var RealTourAPI = ( function () {

  var $submitBtn = $('.signup-form__submit'),
        __Main_Url__ = 'http://localhost:3000/',
        __User_Endpoint__ = 'users';
  var testData = {
      firstname: "Wesley",
      middlename: "",
      lastname: "Yu",
      username: "tester",
      address: "1234 NW 5th st",
      city: "New York",
      state: "New York",
      zip: 12345,
      phonenumber: "2312321412",
      email: "123456@gmail.com",
      password: 123456789,
      password_confirmation: 123456789,
      is_lister: true
    };

  $submitBtn.on("click", emailSignUp);

    function apiRequest ( data ) {
      console.log( 'this is data:', data );
    }

    function emailSignUp() {
      var userEmail = $('.signup-form__field').val();
      $.ajax({
          type: 'POST',
          crossDomain: true,
          url: __Main_Url__ + __User_Endpoint__,
          dataType: 'json',
          data: testData,
      }).done(apiRequest);
    }


})();