<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Products</title>
<style type="text/css">
    .background { background-color: #c0c0c0; padding: 0; color: #335500; }
</style>

</head>
<body>

	<%@include file="./Shared/Header.jsp"%>
	<div class="background"
		style="position: relative; width: 1350px; height: 125px;"></div>

	<h2>All Products are here......</h2>
	<c:set var="count" value="0" />
	<div class="col-lg-5">
		<table id=tab>
			<tr id="tablerow">
				<c:forEach items="${prodlist}" var="pro">
					<c:set var="count" value="${count+1}" />

					<td><a href="ViewSingleProduct/${pro.prodid}" class=""><img
							id="image"
							src="${pageContext.request.contextPath}/resources/Image/${pro.code}/1.jpg"
							height="250px" width="250px" /></a><br> ${pro.prodName}<br>
						<i class="fas fa-rupee-sign"></i>${pro.unitPrice}<br>
						${pro.description} <br></td>
					<c:if test="${count%4==0}">
			</tr>
			<tr id="tablerow">
				</c:if>
				</c:forEach>
			</tr>
		</table>
	</div>

</body>
</html>