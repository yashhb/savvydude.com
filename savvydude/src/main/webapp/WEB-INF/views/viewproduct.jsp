<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>   

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="<c:url value="/Resources/js/controller.js"></c:url>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body ng-app="app"  ng-controller="ProductController">
	<div > 
		<div class="page-header">
			<b>PRODUCT DETAILS</b>
		</div>
		<table class="table">
			<tr>
				<td>Product Name :</td>
				<td>${product.pName }</td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td>${product.pDescription }</td>
			</tr>
			<tr>
				<td>Product Price</td>
				<td>${product.pPrice }</td>
			</tr>
			<tr>
				<td>Category details</td>
				<td>${product.category.categoryDetails }</td>
			</tr>
			<tr>
				<td>Manufacturing Date</td>
				<td>${product.pMfg }</td>
			</tr>
			<tr>
			<td>
			</td>
			
			<td><a href="" ng-click="addToCart(${product.pId })" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> ADD TO CART</a></div></td>
			</tr>
		</table>

	</div>


</body>
</html>