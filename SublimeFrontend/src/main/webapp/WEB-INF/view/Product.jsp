<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
!-- Font-awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
 integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" 
 crossorigin="anonymous">

<title>Products</title>
<style type="text/css">

    .background { background-color: #c0c0c0; padding: 0; color: #335500; }
</style>
</head>
<body>

<%@include file="./Shared/Header.jsp"%>
<div class="background" style="position: relative; width: 1350px; height: 100px;"> 
</div>  
<%-- 
<center>
<h1>
<b><u>All Products</u></b></h1>
</center> --%>
	<form:form class="form-horizontal" modelAttribute="product"
		action="prodReg" method="POST" enctype="multipart/form-data">
		<fieldset>

			<!-- Form Name -->
			<center>
				<legend>PRODUCT REGISTRATION</legend>
			</center>

			<!-- Text input-->
			<div class="form-group">
				<div class="col-md-4">
					<form:input id="textinput" type="text" placeholder="Enter Supplier ID"
						class="form-control input-md" required="" path="supplierId" />
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				
				<div class="col-md-4">
					<form:input id="textinput" type="text" placeholder="Enter product name"
						class="form-control input-md" required="" path="prodName" />
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<div class="col-md-4">
					<form:input id="textinput" path="quantity" type="text"
						placeholder="Enter number of pieces" class="form-control input-md" required="" />
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<div class="col-md-4">
					<form:input id="textinput" path="unitPrice" type="text"
						placeholder="Enter product price" class="form-control input-md" required="" />
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category
				</label>
				<div class="col-md-4">
					<form:select path="categoryId" items="${catlist}"
						itemLabel="categoryName" itemValue="categoryId" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="file">Choose 1st
					Image</label>
				<div class="col-md-4">
					<input type="file" name="file1" class="form-control" />

				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="file">Choose 2nd
					Image</label>
				<div class="col-md-4">
					<input type="file" name="file2" class="form-control" />

				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="file">Choose 3rd
					Image</label>
				<div class="col-md-4">
					<input type="file" name="file3" class="form-control" />

				</div>
			</div><div class="form-group">
				<label class="col-md-4 control-label" for="file">Choose 4th
					Image</label>
				<div class="col-md-4">
					<input type="file" name="file4" class="form-control" />

				</div>
			</div>
			

			<!-- Text input-->
			<div class="form-group">
				<div class="col-md-4">
					<form:textarea id="textinput" type="text" placeholder="Enter small description"
						class="form-control input-md" required="" path="description" />
				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Submit"></label>
				<div class="col-md-4">
					<button id="Submit" class="btn btn-success">Submit</button>
					<button id="Reset" class="btn btn-danger">Reset</button>
				</div>
			</div>


		</fieldset>
	</form:form>
	<table class="table table-hover" border="10">
		<thead>
			<tr>
				<th>Product ID</th>
				<th>Category ID</th>
				<th>Supplier ID</th>
				<th>Description</th>
				<th>Name</th>
				<th>Price</th>
				<th>Stock</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${prodlist}" var="pro">
				<tr>
					<td><img
						src="${pageContext.request.contextPath}/resources/Image/${pro.code}/1.jpg"
						height="200px" width="200px" /></td>
					<td>${pro.prodid}</td>
					<td>${pro.categoryId}</td>
					<td>${pro.supplierId}</td>
					<td>${pro.description}</td>
					<td>${pro.prodName}</td>
					<td>${pro.unitPrice}</td>
					<td>${pro.quantity}</td>
					<td><a href="updateProduct/${pro.prodid}"
						class="fas fa-edit btn btn-info"></a></td>
					<td><a href="deleteProd/${pro.prodid}"
						class="fas fa-trash-alt btn btn-danger"></a></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>
