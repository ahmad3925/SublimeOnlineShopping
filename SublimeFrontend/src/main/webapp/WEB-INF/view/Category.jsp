<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Font-awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
 integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" 
 crossorigin="anonymous">
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
<style type="text/css">
    .background { background-color: #c0c0c0; padding: 0; color: #335500; }
</style>
</head>
<body>
<%@include file="./Shared/Header.jsp"%>
<div class="background" style="position: relative; width: 1350px; height: 125px;"> 
</div>
<%-- <center>
<h1>
<b><u>All Category</u></b></h1>
</center> --%>

<form:form class="form-horizontal" modelAttribute="category" action="catReg" method="post">
		<fieldset>
			<!-- Form Name --><center>
			<legend>CATEGORY REGISTRATION</legend></center>


			<!-- Text input-->
			<div class="form-group">
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="Enter Category Name" class="form-control input-md" required=""
						path="categoryName" />
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="Enter small description" class="form-control input-md" required=""
						path="description" />
				</div>
			</div>
			

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Submit"></label>
				<div class="col-md-4">
					<button id="Submit" name="Submit" class="btn btn-success">Submit</button>
					<button id="Reset" name="Reset" class="btn btn-danger">Reset</button>
				</div>
			</div>
			

		</fieldset>
	</form:form>
	<center>
	<table style="width:1100px" class="table table-hover" border="5">
		<thead>
			<tr>
				<th>Category ID</th>
				<th>Category Name</th>
				<th>Description</th>
					
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${catlist}" var="pro">
				<tr>
					<td>${pro.categoryId}</td>
					<td>${pro.categoryName}</td>
					<td>${pro.description}</td>
					
					<td><a href="catEdit/${pro.categoryId}"
						class="fas fa-edit btn btn-info"></a></td>
					<td><a href="deleteCat/${pro.categoryId}"
						class="fas fa-trash-alt btn btn-danger"></a></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>
</center>
