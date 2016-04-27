<%
String Name = request.getParameter("name");
String Phone = request.getParameter("phone");
String Email = request.getParameter("email");
String design = request.getParameter("dsntn");
String U_ID = request.getParameter("uID");
String Date = request.getParameter("date");
String Branch = request.getParameter("brname");
 %>

		<div class="row" id="profy">
			
						
			<div class="col-md-10">
				<table class="table table-striped table-bordered">
					<tbody><tr class="text-danger">
						<td><strong>Full Name</strong></td>
						<td><strong>Phone Number</strong></td>
						</tr>
						<tr>
						<td><strong> <%= Name %></strong></td>
						<td><strong> <%= Phone %> </strong></td>
						</tr>
						
						<tr class="text-danger">
						<td><strong> Registered Email </strong></td>
						<td><strong> Designation </strong></td>
						</tr>
						
						<tr>
						<td><strong> <%= Email %> </strong></td>
						<td><strong> <%= design %> </strong></td>
						</tr>
									
						<tr class="text-danger">
						<td><strong> Faculty Id .<strong>  </strong> </strong></td>
						<td><strong> Join Date </strong></td>
						</tr>
						<tr>
						
						<td><strong> <%= U_ID %> </strong></td>
						<td><strong><%= Date %></strong></td>
						</tr>
						
						<tr class="text-danger"> 
						<td><strong> Branch<strong>  </strong> </strong></td>
						<td></td>
						</tr>
						
						<tr>
						<td> <strong>	<%= Branch %> </strong> </td>
						
						<td><a href="#" class="btn btn-success btn-sm" onclick="edtprfy()">Edit Profile</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
    <div class="row" id="edprofy" style="display: none;">
    </div>
    
    <script type="text/javascript">
	function edtprfy(){
		  $("#edprofy").load("editProfile.jsp?name="+'<%= Name.replace(" ", "%20") %>'+"&email="+'<%= Email%>'+"&uID="+'<%= U_ID %>'+"&brname="+'<%= Branch.replace(" ", "%20") %>'+"&date="+'<%= Date%>'+"&phone="+'<%= Phone %>'+"&design"+'<%= design.replace(" ", "%20")%>');
      $("#edprofy").show();
      $("#profy").hide();}
</script>