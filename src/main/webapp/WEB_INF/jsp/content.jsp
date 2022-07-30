<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link type="text/css" rel="stylesheet" href="<c:url value="resources/CSS/content.css" />" />
<link rel="stylesheet" href="./JS/listProduct.js">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<form method="post" id="listProduct">
		<div id="content">
		<div class="product">
			<c:forEach items="${products}" var = "item" >
				<div class="product-item" id="productEach">
					<input type="hidden" id="product-id" value="${item.id}" name="productId">
					<img class="product_img" src="${item.type}"/>
					<p class="product-type">${item.name}</p>
					<p class="prodcut-title">${item.des}</p>
					<p class="product-price">${item.price}</p>
				</div>
			</c:forEach>
		</div>
		<div class="pagination">
			<div class="pagination-item"> << </div>
			<div class="pagination-item">1</div>
			<div class="pagination-item">2</div>
			<div class="pagination-item">3</div>
			<div class="pagination-item">4</div>
			<div class="pagination-item">5</div>
			<div class="pagination-item"> >> </div>
		</div>
	</div>
	</form>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#productEach").click(function(e) {
			$("#listProduct").attr("action", "/DetailProduct");
		})
	})
	</script>
</body>
</html>