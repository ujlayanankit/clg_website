
	<form class="form-horizontal" role="form" enctype="multipart/form-data" action="../stuProfile" method="post">
  <h1 class="page-header">Edit Profile</h1>
  <div class="row">
    <!-- left column -->
    <div class="col-md-4 col-sm-6 col-xs-12">
      <div class="text-center">
        <img src="stuimg/<%= "find_user.png" %>" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block well well-sm" name="uploadFile">
      </div>
    </div>
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
            <input class="form-control" value="<%= "name" %>" type="text" name="stu_full_name" autocomplete="off">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Roll No:</label>
          <div class="col-lg-8">
            <input class="form-control" value="<%= 12313 %>" type="number" name="stu_roll_no" disabled="disabled">
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
            <input class="form-control" value="<%= "IT"  %>" type="text" name="stu_branch" disabled="disabled">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Semester:</label>
          <div class="col-lg-8">
            <input class="form-control" value="<%= 2 %>" type="number" name="stu_sem">
          </div>
        </div>        
        <div class="form-group">
          <label class="col-md-3 control-label">Email:</label>
          <div class="col-md-8">
            <input class="form-control" value="<%= "mail@mail.com" %>" type="email" disabled="disabled">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label">Password:</label>
          <div class="col-md-8">
            <input class="form-control" placeholder="Password" type="password" name="stu_pass" autocomplete="off">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label">Confirm password:</label>
          <div class="col-md-8">
            <input class="form-control" placeholder="Confirm Password" type="password" name="stu_com_pass" autocomplete="off">
          </div>
        </div>
         <div class="form-group">
          <label class="col-md-3 control-label">Phone Number:</label>
          <div class="col-md-8">
            <input class="form-control" placeholder="Phone Number" type="number" name="stu_phn_no" autocomplete="off">
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