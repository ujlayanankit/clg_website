 //This is for captcha verification 


var onloadCallback = function() {
        grecaptcha.render('html_element', {
          'sitekey' : '6LdpDR0TAAAAADMbwu4WVYzfpK6bsaQmdrxQqsZI'
        });
      };
      
      
function formVerify()
 {
    var v = grecaptcha.getResponse();
    if(v.length == 0)
    {
    	alert("You can't leave Captcha Code empty");
     return false;
    }
    if(v.length != 0)
    {
     return true; 
    }
 }