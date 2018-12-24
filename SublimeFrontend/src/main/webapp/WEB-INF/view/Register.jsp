<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
    .background { background-color: #c0c0c0; padding: 0; color: #335500; }
</style>
</head>
<body>
<%@include file="./Shared/Header.jsp"%>

	<div class="background"
		style="position: relative; width: 1350px; height: 120px;"></div>


	<center>
		<h1>Welcome to Sublime</h1>
		<br>
		<h3>Register Your self</h3>
	</center>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<form:form class="form-horizontal" modelAttribute="User"
						action="regStud" method="post">
						<fieldset>


							<div class="form-group">
								<label class="col-md-4 control-label" for="textinput">Email</label>
								<div class="col-md-5">
									<form:input id="textinput" path="email" name="textinput"
										placeholder="EmailAddress" class="form-control input-md"
										required="" type="text" />

								</div>
							</div>
				</div>


				<div class="form-group">

					<label class="col-md-4 control-label" for="textinput">First
						Name</label>
					<div class="col-md-5">
						<form:input id="Name" path="FirstName" name="name"
							placeholder="Enter First Name" class="form-control input-md"
							required="" type="text" />

					</div>
				</div>

				<div class="form-group">

					<label class="col-md-4 control-label" for="textinput">Last
						Name</label>
					<div class="col-md-5">
						<form:input id="Name" path="LastName" name="name"
							placeholder="Enter Last Name" class="form-control input-md"
							required="" type="text" />

					</div>
				</div>


				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="textinput">Mobile
						Number</label>
					<div class="col-md-5">
						<form:input id="textinput" path="mobile" name="textinput"
							placeholder="Enter Mobile Number" class="form-control input-md"
							maxlength="10" required="" type="text" />

					</div>
				</div>

				<!-- Password input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="passwordinput">Set
						Password </label>
					<div class="col-md-5">
						<form:input id="passwordinput" path="password"
							name="passwordinput" placeholder="**************"
							class="form-control input-md" required="" type="text" />

					</div>
				</div>
				

				<!-- Button (Double) -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="button1id"></label>
					<div class="col-md-5">
						<button id="button1id" type="submit" name="button1id"
							class="btn btn-info">Submit</button>
						<button id="Cancel" name="Cancel" class="btn btn-danger">Cancel</button>
						<a href="ShowUser" class="btn btn-info"> Show Records</a>
						<p>
							Already a member? <a href="login.html">Login</a>
						</p>


					</div>
				</div>

				</fieldset>
				</form:form>
				</div>
				</div>
				</div>
				</body>
				</html>
			