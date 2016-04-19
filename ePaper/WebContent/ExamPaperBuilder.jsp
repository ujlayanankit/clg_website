<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="include/conn_open.jsp" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
    	<!-- meta character set -->
        <meta charset="utf-8">
		<!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>EXAM PORTAL</title>		
		
		<!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- CSS
		================================================== -->
		
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		
		<!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- bootstrap.min -->
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
		
		
        <link rel="stylesheet" href="css/main.css">
      

		<!-- Modernizer Script for old Browsers -->
        <script src="js/modernizr-2.6.2.min.js"></script>
    	<script type="text/javascript" src="js/examPaperBuilder.js"></script>
    	  
    </head>
	
    <body class="main">	 
    <header id="navigation" class="navbar-inverse navbar-fixed-top animated-header">
        <div class="container">
           <div class="navbar-header">
           <!-- responsive nav button -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
            </button>
			<!-- /responsive nav button -->
				<!-- logo -->
				<h1 class="navbar-brand">
				<a class="navbar-brand" href="#body"><img src="img/slider/mietLogo.jpeg" class="img-thumbnail img-responsive" alt="MIET Group" width="108" height="auto" STYLE="position:absolute; TOP:12px; LEFT:50px; WIDTH:100px; HEIGHT:70px; opacity: 0.7; filter: alpha(opacity=70);" ></a>
				</h1>
				<!-- /logo -->
                </div>
			<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                <ul id="nav" class="nav navbar-nav" style ="opacity: 0.7; filter: alpha(opacity=70);">
    				<li><a href="#body">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#signin" onclick="clickLogin();">Login</a></li>
                    <li><a href="#">SignUp</a></li>
                    <li><a href="#">Help</a>
                    <li><a href="#contact">Contact</a></li>
                </ul>
                </nav>
				<!-- /main nav -->
		</div>
        </header>
         <div class="container">
      		<h1 class="text-center" style="visibility:hidden;"><br>Meerut Institute of Technology<br></h1>
       		<p></p>
         </div>
		<div class="container bs-docs-container"> 
    	<div class="row">
    	<div class="col-md-6 col-md-offset-3 well">
    	
   		<form>
			<div class="form-group">
			<label for="selectSubject">Subject</label>
			<select class="form-control" name="selectSubject" id="examSubjects" onchange="selSub()" required>
  		 	<option value="" selected disabled="disabled">Select  </option>
  		<%	try{
		   rs=st.executeQuery("Select * from Subject");
		  while(rs.next())
			{%>
		<option value="<%= rs.getString("Sub_Code") %>">     
     	<%= rs.getString("Sub_Name")%>
     	</option>
       	<% }
  		}
		catch(Exception e){
		}%>
  			</select>
  			</div>
  			<div class="form-group">
  			<label for="maxMark">Maximum Marks</label>
			<input type="number" class="form-control" id="InpMaxMarks" placeholder="0" name="maxMark" onkeyup="markMax()" required>
  			</div>
  			<div class="form-group">
			<label for="totalSection">Total Section</label>
			<select class="form-control" name="totalSection" id="InpTotalSection" onchange="addRow()" required>
  			<option value="" selected disabled="disabled">Select  </option>
  			<option value="1" > 1. </option>
  			<option value="2" > 2. </option>
  			<option value="3" > 3. </option>
  			<option value="4" > 4. </option>
  			<option value="5" > 5. </option>
  			</select>
  			</div>
  			<div class="form-group table-responsive">
			<table class="table table-bordered" id="myTableData">
    		<div>
			<thead> 
      		<tr>
        	<th>Section</th>
        	<th>Max. Ques.</th>
        	<th>Max. Attempt</th>
        	<th>Marks</th>
      		</tr>
    		</thead>
			</div>
			<div id="myDynamicTable">
			</div>
	 		</table>
			</div>
			<div class="form-field">
     	<button type="submit" class="btn btn-raised btn-success pull-right"> Done </button>
     	</div>
  	</form>
    </div>
     <!--      <div class="col-md-3 well" role="complementary">
		<form method="post">
		<fieldset>   	
     	<legend class="text-center">-Paper-</legend>
    	 </fieldset>
    	 <label>Subject: </label>
    	 <label name="selSUbject" id="selectedSubject">Select</label>
    	 <br><label>Max Marks: </label>
    	 <label name="maxMarks" id="selectedMark">Marks</label>
    	<fieldset>   	
     	<legend>Section</legend>
    	 </fieldset>
    	 <div id="myDynamicTableData" on>
			</div>
     	
     	<div class="form-field">
     	<button type="submit" class="btn btn-raised btn-success pull-right"> Done </button>
     	</div>
     </form>
     </div>
     	-->
    
    </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
     document.body.style.backgroundImage = "url('img/slider/banner.jpg')";
    
   });
      </script>
    
</body>

</html>