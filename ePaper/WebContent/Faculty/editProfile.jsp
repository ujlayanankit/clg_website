<%@include file="../include/conn_open.jsp" %>
<%
String Name = request.getParameter("name");
String Phone = request.getParameter("phone");
String Email = request.getParameter("email");
String design = request.getParameter("design");
String U_ID = request.getParameter("uID");
String Date = request.getParameter("date");
String Branch = request.getParameter("brname");
 %>
	<form class="form-horizontal" role="form" enctype="multipart/form-data" action="../stuProfile" method="get" onsubmit="return chck()">
  <h1 class="page-header">Edit Profile</h1>
  <div class="row">
    <!-- left column -->
    
    <!-- edit form column -->
    <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
     <!--   <div class="alert alert-info alert-dismissable">
        <a class="panel-close close" data-dismiss="alert">×</a> 
        <i class="fa fa-coffee"></i>
         <strong>.alert</strong>. Use this to show important messages to the user.
      </div> -->
      <h3>Personal info</h3>
      
        <div class="form-group">
          <label class="col-lg-3 control-label">Full Name:</label>
          <div class="col-lg-8">
            <input class="form-control" value="<%= Name %>" type="text" name="stu_full_name" autocomplete="off">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label"> Faculty Id:</label>
          <div class="col-lg-8">
            <input class="form-control" value="<%= U_ID %>" type="number" name="stu_roll_no" disabled="disabled">
          </div>
        </div>
       <!--  <div class="form-group">
          <label class="col-lg-3 control-label">Email:</label>
          <div class="col-lg-8">
            <input class="form-control" value="" type="text" name="stu_email" disabled="disabled">
          </div>
        </div> -->
        <div class="form-group">
          <label class="col-lg-3 control-label">Branch:</label>
          <div class="col-lg-8">
            <input class="form-control" value="<%= Branch  %>" type="text" name="stu_branch" disabled="disabled">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Subjects:</label>
          <div class="col-lg-8">
            <select class="form-control" name="selectSub" id="selSub" onchange="selSbj()" required multiple="multiple">
  		 	<option value="" selected disabled="disabled">Select  </option>
  			<% 
  				rs = st.executeQuery("SELECT * FROM `Subject` ORDER BY `Subject`.`Sub_Name` ASC");
  				rs.next();
  				while(rs.next()){ 
  			 %>
  			 <option value="<%= rs.getString("Sub_Code") %>"> <%= rs.getString("Sub_Name") %> (<%= rs.getString("Sub_Code") %>)  </option>
			<% } %>
  			</select>
          </div>
        </div>        
        <div class="form-group">
          <label class="col-md-3 control-label">Email:</label>
          <div class="col-md-8">
            <input class="form-control" value="<%= Email %>" type="email" disabled="disabled">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label">Password:</label>
          <div class="col-md-8">
            <input class="form-control" placeholder="Password" type="password" name="stu_pass" id="stu_pass" autocomplete="off">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label">Confirm password:</label>
          <div class="col-md-8">
            <input class="form-control" placeholder="Confirm Password" type="password" name="stu_com_pass" id="stu_com_pass" autocomplete="off">
          </div>
        </div>
         <div class="form-group">
          <label class="col-md-3 control-label">Phone Number:</label>
          <div class="col-md-8">
            <input class="form-control" type="number" value="<%= Integer.parseInt(Phone) %>" name="stu_phn_no" autocomplete="off" >
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label"></label>
          <div class="col-md-8">
            <input class="btn btn-primary" value="Save Changes" type="submit">
            <span></span>
            <input class="btn btn-default" value="Cancel" type="reset">
          </div>
        </div>
     
    </div>
  </div>
</form>

<br>
<br>
<div>
<lable> <strong style="color: red;"> * </strong> For selecting multiple subject, Just hold <em>Ctrl</em> key and select subject. </lable>
</div>

<script type="text/javascript">
function chck(){
var ps = document.getElementById("stu_pass").value;

var cps = document.getElementById("stu_com_pass").value;

if(ps==cps){
return true;
}
else{
alert("Check Input");
return false;
}

}
</script>