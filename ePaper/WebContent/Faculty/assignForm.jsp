<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/conn_open.jsp" %>
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
		<!-- Meta Description -->
        <meta name="description" content="Blue One Page Creative HTML5 Template">
        <meta name="keywords" content="one page, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
        <meta name="author" content="Muhammad Morshed">
		
		<!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- CSS
		================================================== -->
		
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		
		<!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="../css/font-awesome.min.css">
		<!-- bootstrap.min -->
        
        <link rel="stylesheet" href="../css/bootstrap.min.css">
		<!-- bootstrap.min -->
     	<link rel="stylesheet" href="../css/slit-slider.css">
		<!-- bootstrap.min -->
        <link rel="stylesheet" href="../css/animate.css">
		<!-- Main Stylesheet -->
        <link rel="stylesheet" href="../css/main.css">
         <link rel="stylesheet" href="../css/logincss.css">

		<!-- Modernizer Script for old Browsers -->
        <script src="../js/modernizr-2.6.2.min.js"></script>
        <script src="../js/loginjs.js"></script>
        <script type="text/javascript" src="../js/examPaperBuilder.js"></script> 
    </head>
	
    <body id="body">
    
    <%  String maxMark = request.getParameter("maxMark");
		String Sub_code = request.getParameter("selectSubject");
		String totalSec = request.getParameter("totalSection");
		
		String MaxSecA = request.getParameter("tabinA1");
		String AtmpSecA = request.getParameter("tabinA2");
		String MarkSecA = request.getParameter("tabinA3");
		
		String MaxSecB = request.getParameter("tabinB1");
		String AtmpSecB = request.getParameter("tabinB2");
		String MarkSecB = request.getParameter("tabinB3");
	
		String MaxSecC = request.getParameter("tabinC1");
		String AtmpSecC = request.getParameter("tabinC2");
		String MarkSecC = request.getParameter("tabinC3");
		
		String MaxSecD = request.getParameter("tabinD1");
		String AtmpSecD = request.getParameter("tabinD2");
		String MarkSecD = request.getParameter("tabinD3");
		
		String MaxSecE = request.getParameter("tabinE1");
		String AtmpSecE = request.getParameter("tabinE2");
		String MarkSecE = request.getParameter("tabinE3");
		
		String Fac_ID = request.getParameter("FacID");
		String Sem = request.getParameter("Sem");
		String Branch = request.getParameter("Branch");
		
		
		int ts=Integer.parseInt(totalSec);
		int[] mxques = new int[5]; 
		System.out.println(MaxSecA+" "+ MaxSecB+" "+MaxSecC+" "+MaxSecD);
	//	for(int i=0;i<ts;i++)
		if(!(MaxSecA).equals(null))
		mxques[0]=Integer.parseInt(MaxSecA);
		if(MaxSecB != null)
		mxques[1]=Integer.parseInt(MaxSecB);
		if(MaxSecC != null)
		mxques[2]=Integer.parseInt(MaxSecC);
		if(MaxSecD != null)
		mxques[3]=Integer.parseInt(MaxSecD);
		if(MaxSecE != null)
		mxques[4]=Integer.parseInt(MaxSecE);
		
		String[] arr = {"A","B","C","D","E"};
		
	//	String secArr[] = new String[5];
	//	secArr = {"Sec"}
		%>
    
    
    <div class="bs-docs-header well" id="content" tabindex="-1">
    <ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                       <% for(int i=0; i<3; i++){ %>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>Artificial Intelligence Assignment</strong>
                                    <span class="pull-right text-muted">
                                        <em>Submission Apr 23,2016</em>
                                    </span>
                                </div>
                                
                            </a>
                        </li>
                        <li class="divider"></li>
                       <% } %>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
               
                
				<li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="index.jsp"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
     <div class="container"> 
     
      <h1 class="text-center">Meerut Institute of Technology</h1>
      <div id="" class="pull-right"><%
			out.println("Max Marks:" + maxMark);
		
			%></div>
		
      <div class="form-group text-center"   >
			<label for="Subject"> 
			<%
		try{
		   rs=st.executeQuery("Select Sub_Name from Subject where Sub_Code='"+Sub_code+"'");
			rs.next();  
		%>
		<%= rs.getString("Sub_Name") %> 
					<%
 out.println("("+Sub_code+")");
%> 
			
       	<% 
  		}
		catch(Exception e){
		e.printStackTrace();
		}
			
			%>			 
			</label>
  		  			</div>
  		  			
       
        
        </div>
        </div>
    
    
      
    
    
    <div class="container bs-docs-container"> 
    <div class="row">
    <div class="col-md-9 well" role="main">
     <form >
     <% 
    
     for(int i= 0; i<ts;i++){ %>
    	
   <div id="sec<%= arr[i] %>" class="well">
       	<h1>Section <%= arr[i] %></h1>
       	
    <!-- Sections Begin -->
   
       <% for(int j= 0; j<mxques[i];j++){ %>
       
      <label >  Question <%= j+1 %> </label>
       <div class="form-group ">
      <textarea rows="5" cols="80" maxlength="500" name="FieldID<%= Branch %>-<%= Sem %>-<%= Fac_ID %>-Sec<%= arr[i] %>-Ques<%= j+1 %>" required> </textarea></a>
      </div>
       <% } %> 
       
        </div>
    <!-- Sections End -->
     <% } %> 
     <div class="container">
	<a href="index.jsp" class="btn btn-info" role="button">Go Back</a>
  <a href="#" class="btn btn-info" role="button">Save Assignment</a>
  <a href="#" class="btn btn-info" role="button">Submit Assignment</a>
  
</div>
      </form>
    </div>
   <div class="col-md-3" role="complementary">
    <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix well">
     <ul class="nav bs-docs-sidenav">
      <li class="">
       <!--  for-loop for section -->
       <%   for(int i= 0; i<ts;i++){ %>
    	
        <a class="btn btn-default well" style = "width:90px" href="#sec<%= arr[i] %>">Section <%= arr[i] %>  </a> 
			
			<% } %>
      
    
      </li>
      </ul>
     </nav>
    </div>

</div>
</div>

 <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
<script type="text/javascript">
	// set the date we're counting down to
var target_date = new Date('Apr, 19, 2016, 22:30:10').getTime();
 
// variables for time units
var days, hours, minutes, seconds;
 
// get tag element
var countdown = document.getElementById('countdown');
 
// update the tag with id "countdown" every 1 second
setInterval(function () {
 
    // find the amount of "seconds" between now and target
    var current_date = new Date().getTime();
    var seconds_left = (target_date - current_date) / 1000;
 
    // do some time calculations
   // days = parseInt(seconds_left / 86400);
    seconds_left = seconds_left % 86400;
     
    hours = parseInt(seconds_left / 3600);
    seconds_left = seconds_left % 3600;
     
    minutes = parseInt(seconds_left / 60);
    seconds = parseInt(seconds_left % 60);
     
    // format countdown string + set tag value
    countdown.innerHTML = '<span class="hours">' + hours + ' <b> : </b></span> <span class="minutes">'
    + minutes + ' <b> : </b></span> <span class="seconds">' + seconds + ' <b> </b></span>';  
 
}, 1000);
	
	</script>
</body>
</html>