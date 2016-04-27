
		<div class="row" id="profy">
			
						
			<div class="col-md-10">
				<table class="table table-striped table-bordered">
					<tbody><tr class="text-danger">
						<td><strong>Full Name</strong></td>
						<td><strong>Phone Number</strong></td>
						</tr>
						<tr>
						<td><strong> <%= request.getParameter("name") %></strong></td>
						<td><strong> <%= "12344567876" %> </strong></td>
						</tr>
						
						<tr class="text-danger">
						<td><strong> Registered Email </strong></td>
						<td><strong> Designation </strong></td>
						</tr>
						
						<tr>
						<td><strong> <%= "mail@gmail.com" %> </strong></td>
						<td><strong> <%= "Ass. Prof. " %> </strong></td>
						</tr>
									
						<tr class="text-danger">
						<td><strong> Faculty Id .<strong>  </strong> </strong></td>
						<td><strong> Join Date </strong></td>
						</tr>
						<tr>
						
						<td><strong> <%= "1229213" %> </strong></td>
						<td><strong> <%= "10-08-2012" %></strong></td>
						</tr>
						
						<tr class="text-danger"> 
						<td><strong> Branch<strong>  </strong> </strong></td>
						<td></td>
						</tr>
						
						<tr>
						<td> <strong>	<%= "IT" %> </strong> </td>
						
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
		
      $("#edprofy").load("editProfile.jsp");
      $("#edprofy").show();
      $("#profy").hide();}
</script>