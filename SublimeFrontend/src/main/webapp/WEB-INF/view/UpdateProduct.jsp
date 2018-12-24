
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form:form class="form-horizontal" modelAttribute="product"
		action="${pageContext.request.contextPath}/updateProd"
		method="post" enctype="multipart/form-data">
		<fieldset>

			<!-- Form Name -->
			<legend>EDIT PRODUCT</legend>
			<form:hidden path="prodid" />
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Supplier
					ID</label>
				<div class="col-md-8">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="supplierId" />
					<span class="help-block">Enter your ID</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Product
					Name</label>
				<div class="col-md-8">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="prodName" />
					<span class="help-block">Enter product name</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Quantity</label>
				<div class="col-md-8">
					<form:input id="textinput" path="quantity" name="textinput"
						type="text" placeholder="" class="form-control input-md"
						required="" />
					<span class="help-block">Enter number of pieces</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Price</label>
				<div class="col-md-8">
					<form:input id="textinput" path="unitPrice" name="textinput"
						type="text" placeholder="" class="form-control input-md"
						required="" />
					<span class="help-block">Enter product price</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category
				</label>
				<div class="col-md-8">
					<form:select path="categoryId" items="${catlist}"
						itemLabel="categoryName" itemValue="categoryId" />
					<span class="help-block">Category of product</span>
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

			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Choose
					Image</label>
				<div class="col-md-8">
					<input type="file" name="file1" />
				</div>
			</div>


			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Choose
					Image</label>
				<div class="col-md-8">
					<input type="file" name="file2" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Choose
					Image</label>
				<div class="col-md-8">
					<input type="file" name="file3" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Choose
					Image</label>
				<div class="col-md-8">
					<input type="file" name="file4" />
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