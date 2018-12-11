<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<form:form class="form-horizontal" modelAttribute="category" action="${pageContext.request.contextPath}/updateCat" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend>EDIT CATEGORY</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category ID</label>
				<div class="col-md-8">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="categoryId" />
					<span class="help-block">Enter your ID</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category
					Name</label>
				<div class="col-md-8">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="categoryName" />
					<span class="help-block">Enter Category name</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Description</label>
				<div class="col-md-8">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="description" />
					<span class="help-block">Enter small description</span>
				</div>
			</div>
			

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