<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign Up</title>

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
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">		
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><img src="img/slider/mietLogo.jpeg" class="img-thumbnail img-responsive" alt="MIET Group" width="108" height="auto" STYLE="position:absolute; TOP:12px; LEFT:50px; WIDTH:100px; HEIGHT:70px; opacity: 0.7;
				filter: alpha(opacity=70);" ></a></div>
	
		</div>
	</nav>
  
    <div class="Container-fluid loginback">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-md-push-3 col-sm-push-3 well">
				<form action="AccCreates" method="post" name="RegForm" onsubmit="return formVerify()">
					<div class="form-group">
						<h2 class="text-center">Register for a new account</h2>
  					</div>
  				
					<div class="form-group">
						<label for="InputNameRS">Full Name</label>
						<input type="text" class="form-control" id="InputNameRS" placeholder="Name" name="fullName" required>
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
						<label for="InputEmailRS">Email address</label>
						<input type="email" class="form-control" id="InputEmailRS" placeholder="Email" name="userEmail" required autocomplete="off">
  					</div>
  					
					<div class="form-group">
  						<label for="InputSecurity">Select a Security Question.</label>
  						<select class="form-control" name="Security" id="secQues" onchange="secQuesn()" required>
  							<option value="" selected disabled="disabled">Select  </option>
  							<option value="What time of the day were you born? (hh:mm)">
  								What time of the day were you born? (hh:mm)
  							</option>
  							<option value="What are the last 5 digits of your dring license number?">
  								What are the last 5 digits of your driving license number?
  							</option>
  							<option value="Where were you when you had your first alcoholic drink (or cigarette)?">
  								Where were you when you had your first alcoholic drink (or cigarette)?
  							</option>
  							<option value="What was the house number and street name you lived in as a child?">
  								What was the house number and street name you lived in as a child?
  							</option>
  						<!-- 	<option value="others">
  								Others (Please write your Question and no special character allowed)
  							</option> -->
  						</select>
  					</div>
  					
					<div class="form_group" id="otherSec">
						<input type="text" class="form-control" id="otherSecQues" placeholder="Write your Question" name="otherSecQues">
  					</div>
  					
					<div class="form-group">	
  						<label for="InputSecurityAns">Answer For Security Question.</label>
   						<input type="text" class="form-control" id="InputSecurityAns" placeholder="Answer" name="secAnswer" autocomplete="off" required>
  					</div>
  					<div class="form-group">
  						<div id="html_element"></div>
  					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary pull-right">SignUp</button>
					</div>
  				
					<div class="form-group">
						<a href="index.html"><input type="button" class="btn btn-primary pull-left" value="Back" /></a>
					</div>
  				
  				
  				</form>
  			</div>
  		</div>
	</div>
	
	<footer id="footer">
			<div class="container">
				<div class="row text-center">
					<div class="footer-content">
						<p style="color: white; font-size: 1.3em;">Copyright &copy; 2015-2016 <a href="http://www.mitmeerut.ac.in"> <h4> Mit, Meerut </h4></a> </p> 
					</div>
				</div>
			</div>
		</footer>

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