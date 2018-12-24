<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <script type="text/javascript">
	function checkPass() {
		//Store the password field objects into variables ...
		var pass1 = document.getElementById('newpassword');
		var pass2 = document.getElementById('confirm_password');
		//Store the Confimation Message Object ...
		var message = document.getElementById('confirmMessage');
		//Set the colors we will be using ...
		var goodColor = "#66cc66";
		var badColor = "#ff6666";
		//Compare the values in the password field 
		//and the confirmation field
		if (newpassword.value == confirm_password.value) {
			//The passwords match. 
			//Set the color to the good color and inform
			//the user that they have entered the correct password 
			confirm_password.style.backgroundColor = goodColor;
			message.style.color = goodColor;
			message.innerHTML = "Passwords Match!"
		} else {
			//The passwords do not match.
			//Set the color to the bad color and
			//notify the user.
			confirm_password.style.backgroundColor = badColor;
			message.style.color = badColor;
			message.innerHTML = "Passwords Do Not Match!"
		}
	}
</script>
 -->
 <script>
	$(document).ready(function() {
		$("#flip").click(function() {

			$("#panel").animate({
				width : "toggle",
				height : "toggle"
			});
		});
	});
</script>


<style>
#panel, #flip {
	padding: 2px;
	text-align: center;
	background-color: #e5eecc;
	border: solid 1px #c3c3c3;
}

#panel {
	padding: 10px;
	display: none;
}
</style>

<style type="text/css">
.show {
	display: block;
}
</style>

</head>

<body>

	<div class="container">
		<div class="row">
			<div
				class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i>Hello, ${user.firstName} ${user.lastName}</i>
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3 col-lg-3 " align="center">
								<%-- <h1>
									<img
										src="<c:url value="/resources/Image/banner/52948509_Al.jpg"/>"	class="img-responsive" alt="" />
									
								</h1> --%>
							</div>

							<div class=" col-md-9 col-lg-9 ">
								<span style="color: red;">${msg1}</span>
								<form:form class="form-horizontal" id="profileForm"
									modelAttribute="UpdateUser"
									action="${pageContext.request.contextPath}/updateUser"
									method="post">
									<fieldset>
										<form:hidden path="userid" />


										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">First Name</label>
											<div class="col-md-8">
												<form:input id="Name" path="FirstName" name="name"
													placeholder="StudentName" class="form-control input-md"
													required="" type="text" />

											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Last Name</label>
											<div class="col-md-8">
												<form:input id="Name" path="LastName" name="name"
													placeholder="StudentName" class="form-control input-md"
													required="" type="text" />

											</div>
										</div>

										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Email</label>
											<div class="col-md-8">
												<form:input id="textinput" path="email" name="textinput"
													placeholder="Email" class="form-control input-md"
													required="" type="text" />

											</div>
										</div>

										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Mobile
												number</label>
											<div class="col-md-8">
												<form:input id="textinput" path="mobile" name="textinput"
													placeholder="Mobilenumber" class="form-control input-md"
													required="" type="text" />

											</div>
										</div>

										<form:hidden path="role" />
									

										

										<div class="dropdown" style="float: right">
											<a href="#" class="dropbtn" id="flip">Change Password</a>
											<div style="height: 80px">
												<div class="dropdown-content">
													<div id="panel">
														<div class="form-group">
															<div class="col-md-12">
																<input id="passwordinput" path="password"
																	name="oldPassword" placeholder="Current Password"
																	class="form-control input-md"  type="text" />

															</div>
														</div>
														<div class="form-group">
															<div class="col-md-12">
																<input id="newpassword" name="newpassword"
																	placeholder="New Password" value=""
																	class="form-control input-md"  type="text" />
															</div>
														</div>
														<div class="form-group">
															<div class="col-md-12">
																<input id="confirm_password" name="confirm_password"
																	placeholder="Retype New Password"
																	class="form-control input-md" 
																	onkeyup="checkPass(); return false;" type="password" />
																<span id="confirmMessage" class="confirmMessage"></span>
															</div>
														</div>
													</div>
												</div>

</div></div>
											<!-- Button (Double) -->
												<div class="form-group">
													<div>
														<button id="button1id" type="submit" name="button1id"
															class="btn btn-info">Submit</button>
														<button id="Cancel" name="Cancel" class="btn btn-danger">Cancel</button>
													</div>
												</div>


											

										

									</fieldset>
								</form:form>
							</div>
							</div>
						</div>
					</div>
				
				</div>

				<!-- 	<h2>FAQs</h2>
		<h4>What happens when I update my email address (or mobile
			number)?</h4>
		<p>Your login email id (or mobile number) changes, likewise.
			You'll receive all your account related communication on your updated
			email address (or mobile number)</p>
		<h4>When will my Flipkart account be updated with the new email
			address (or mobile number)?</h4>
		<p>It happens as soon as you confirm the verification code sent to
			your email (or mobile) and save the changes.</p>
		<h4>What happens to my existing Flipkart account when I update my
			email address (or mobile number)?</h4>
		<p>Updating your email address (or mobile number) doesn't
			invalidate your account. Your account remains fully functional.
			You'll continue seeing your Order history, saved information and
			personal details</p> -->
			</div>
		</div>

	</div>
<!-- 	<script type="text/javascript">
		function isPasswordMatch() {
			var password = $("#password").val();
			var confirmPassword = $("#confirm_password").val();

			if (password != confirmPassword)
				$("#divCheckPassword").html("Passwords do not match!");
			else
				$("#divCheckPassword").html("Passwords match.");
		}

		$(document).ready(function() {
			$("#confirm_password").keyup(isPasswordMatch);
		});
	</script>
	<script>
		/* When the user clicks on the button, 
		 toggle between hiding and showing the dropdown content */

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
			if (!event.target.matches('.dropbtn')) {

				var dropdowns = document
						.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.classList.contains('show')) {
						openDropdown.classList.remove('show');
					}
				}
			}
		}
	</script>
 -->

</body>
</html>