<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@include file="header.jsp" %> 
	
	<div id="detailProduct">
		<div id="nameProduct">${product.name}</div>
		<hr>
		<div id="info">
			<div class="detailProductImg">
				<img src="${product.type}">
			</div>
			<div class="detailProductInfo">
				<h3 class="price">${product.price}</h3>
				<p class="des">${product.des}</p>
			</div>
			<button class="addToCard">Add to card</button>
		</div>
	</div>
	
	<%@include file="footer.jsp" %> 

</body>
</html>