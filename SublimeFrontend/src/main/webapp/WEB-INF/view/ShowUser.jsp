<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Font-awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
 integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" 
 crossorigin="anonymous">
 
<title>Insert title here</title>
</head>
<body>

<table class="table">
  <thead class="thead-dark">
    <tr><h2>User Records</h2></tr>
    <tr>
<th scope="col">UserID</th>
<th scope="col">Email</th>
<th scope="col">First Name</th>
<th scope="col">Last Name</th>
<th scope="col">mobile</th>

<th scope="col">Action</th>
</tr>
</thead>
<c:forEach  items="${listUser}" var="User"> 
<tr>
<td>${User.userid}</td>
<td>${User.email}</td>
<td>${User.firstName}</td>
<td>${User.lastName}</td>
<td>${User.mobile}</td>

<td>
<a href="EditUser/${User.userid}" class="fas fa-pencil-alt btn btn-info"></a>
<a href="deleteUser/${User.userid}" class="fas fa-trash-alt btn btn-danger"></a></td>
</tr>
</c:forEach>
</table>



</body>
</html>