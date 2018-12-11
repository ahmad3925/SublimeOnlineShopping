<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
!-- Font-awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
 integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" 
 crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Supplier</title>
</head>
<body>
<%@include file="./Shared/Header.jsp"%>

<center>
<h1>
<b><u>All Supplier</u></b></h1>
</center>

<form:form class="form-horizontal" modelAttribute="supplier" action="regSupp" method="post">
		<fieldset>

			<!-- Form Name --><center>
			<legend>SUPPLIER REGISTRATION</legend></center>


			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Supplier Name</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="Enter Supplier Name" class="form-control input-md" required=""
						path="supplierName" />
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
	
<table class="table table-hover" border="10">
		<thead>
			<tr>
				<th>Supplier ID</th>
				<th>Supplier Name</th>
				<th>Description</th>
					
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${suplist}" var="pro">
				<tr>
					<td>${pro.supplierid}</td>
					<td>${pro.supplierName}</td>
					<td>${pro.description}</td>
					
					<td><a href="supEdit/${pro.supplierid}"
						class="fas fa-edit btn btn-info"></a></td>
					<td><a href="deleteSup/${pro.supplierid}"
						class="fas fa-trash-alt btn btn-danger"></a></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>