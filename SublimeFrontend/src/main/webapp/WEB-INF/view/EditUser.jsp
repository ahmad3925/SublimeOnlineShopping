<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User</title>
</head>
<body>

	<form:form class="form-horizontal" id="profileForm"
		modelAttribute="UpdateUser"
		action="${pageContext.request.contextPath}/updateUser" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend>EDIT USER</legend>
			<form:hidden path="userid" />

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">First
					Name</label>
				<div class="col-md-8">
					<form:input id="Name" path="FirstName" name="name"
						placeholder="FirstName" class="form-control input-md"
						required="" type="text" />

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Last
					Name</label>
				<div class="col-md-8">
					<form:input id="Name" path="LastName" name="name"
						placeholder="LastName" class="form-control input-md"
						required="" type="text" />

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Email</label>
				<div class="col-md-8">
					<form:input id="textinput" path="email" name="textinput"
						placeholder="Email" class="form-control input-md" required=""
						type="text" />

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




			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Submit"></label>
				<div class="col-md-8">
					<button id="Submit" name="Submit" class="btn btn-success">Submit</button>
					<button id="Reset" name="Reset" class="btn btn-danger">Reset</button>
				</div>
			</div>


		</fieldset>
	</form:form>


</body>
</html>