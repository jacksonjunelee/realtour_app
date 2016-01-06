// main js page

var RealTourAPI = ( function () {

  var $submitBtn = $('.signup-form__submit'),
        __Base_Url__ = 'http://localhost:3000/',
        __User_Endpoint__ = 'v1/email_lists';


  $submitBtn.on("click", emailSignUp);

    function apiRequest ( data ) {
      console.log( 'this is data:', data );
    }

    function emailSignUp() {
      var userEmail = $('.signup-form__field').val();
      var testData = {
        email: userEmail
      };
      $.ajax({
          type: 'POST',
          crossDomain: true,
          url: __Base_Url__ + __User_Endpoint__,
          dataType: 'json',
          data: testData
      }).done(apiRequest);
    }


})();