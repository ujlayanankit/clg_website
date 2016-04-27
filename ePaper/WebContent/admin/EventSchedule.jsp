<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Event Scheduling</title>

       <link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/logincss.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    
    <script type="text/javascript" src="js/loginjs.js"></script>
   
    <script type="text/javascript" src="js/captch.js"></script>
    
  </head>
  <body class="main">
    
  
    <div class="Container-fluid loginback">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-md-push-3 col-sm-push-3 well">
				<form action="AccCreates" method="post" name="RegForm" onsubmit="return formVerify()">
					<div class="form-group">
						<h2 class="text-center">Schedule Event</h2>
  					</div>
  				<div class="form-group">
  						<label for="userType">Registered as.</label>
  						<select class="form-control" name="userType" id="u_type" onchange="u_id()" required>
  							<option value="" selected disabled="disabled">Select  </option>
  							<option value="fac"> Faculty </option>
  							<option value="stu"> Student  </option>
  						</select>
  					</div>
  					
					<div class="form-group" id="forFacOrStu">
						<label for="InputID" id="facorstu"></label>
						<input type="number" class="form-control" id="InputID" placeholder="" name="userID" required>
  					</div>
  					
					<div class="form-group">
						<label for="InputNameRS">Full Name</label>
						<input type="text" class="form-control" id="InputNameRS" placeholder="Name" name="fullName" required>
  					</div>
  					
					
  					<div class="form-group">
						<label for="InputEmailRS">Email address</label>
						<input type="email" class="form-control" id="InputEmailRS" placeholder="Email" name="userEmail" required autocomplete="off">
  					</div>
  					
					<div class="form-group">
    				 <label for="InputNotification">Event Subject:</label>
   					 <input type="notification" class="form-control" id="Inputnotification" placeholder="Subject" name="notification">
  					</div>

				<br>

  					<div class="form-group">
   					 <label for="InputMessage">Message:</label>
   					 
					 <div class="form-group">
							<textarea type="message"  class="form-control" rows="5" id="message"placeholder="Type your message here" name="message"></textarea>
						</div>
  					</div>

					<br>
					<div class="form-group">
    				 <label for="InputDeadline">Deadline(if any):</label>
   					 <input type="" class="form-control" id="Inputnotification" placeholder="Put Deadline here" name="deadline">
  					</div>
					
  					
					
  					<div class="form-group">
  						<div id="html_element"></div>
  					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary pull-right">Generate & Notify</button>
					</div>
  				
					<div class="form-group">
						<a href="index_Admin.jsp"><input type="button" class="btn btn-primary pull-left" value="Back" /></a>
					</div>
  				
  				
  				</form>
  			</div>
  		</div>
	</div>
	
<!-- 	<footer id="footer">
			<div class="container">
				<div class="row text-center">
					<div class="footer-content">
						<p style="color: white; font-size: 1.3em;">Copyright &copy; 2015-2016 <a href="http://www.mitmeerut.ac.in"> <h4> Mit, Meerut </h4></a> </p> 
					</div>
				</div>
			</div>
		</footer>
 -->
     <script src="js/jquery.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
        async defer>
    </script>
         
     <script type="text/javascript">
     $(document).ready(function() {
     document.body.style.backgroundImage = "url('img/slider/banner.jpg')";
		$("#forFacOrStu").hide();
		$("#otherSec").hide();
	 });
     </script>
  
  </body>
</html>