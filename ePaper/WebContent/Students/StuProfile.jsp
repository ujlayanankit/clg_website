
		<div class="row" id="profy">
			
				<div class="col-md-2">			
				<img class="img-thumbnail img-circle img-responsive"src="../img/developers/ankit.jpg" alt="Ankit Verma" />
				<br><br><br>
				<a href="#" class="btn btn-info btn-lg">Change Img</a>
				</div>
			
			<div class="col-md-10">
				<table class="table table-striped table-bordered">
					<tbody><tr class="text-danger">
						<td><strong>Full Name</strong></td>
						<td><strong>Phone Number</strong></td>
						</tr>
						<tr>
						<td><strong> Ankit Verma </strong></td>
						<td><strong> 8899272873 </strong></td>
						</tr>
						
						<tr class="text-danger">
						<td><strong> Registered Email </strong></td>
						<td><strong> Alternate Number </strong></td>
						</tr>
						
						<tr>
						<td><strong> mitit.ankit@gmail.com </strong></td>
						<td><strong> 8475072193 </strong></td>
						</tr>
									
						<tr class="text-danger">
						<td><strong> Roll No.<strong>  </strong> </strong></td>
						<td><strong> Admission Date </strong></td>
						</tr>
						<tr>
						
						<td><strong> 1229213007 </strong></td>
						<td><strong> 10-08-2012 </strong></td>
						</tr>
						
						<tr class="text-danger"> 
						<td><strong> Branch<strong>  </strong> </strong></td>
						<td></td>
						</tr>
						
						<tr>
						<td> <strong>	IT </strong> </td>
						
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