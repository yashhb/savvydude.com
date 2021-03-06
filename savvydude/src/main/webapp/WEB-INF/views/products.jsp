<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<%@ include file="header.jsp"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script src="<c:url value="/Resources/js/controller.js"></c:url>"></script>

	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body ng-app="app" ng-controller="ProductController" style="background-color:#EEEEEE;">
	<div  class="container">
	<c:forEach var="p" items="${productList}">
			
	
<div id="products" class="row-fluid container-folio">
    	   <div class="item">
    	   <div class="col-sm-4">
    			<div class="thumbnail" >
					<h4 class="text-center"><span class="label label-info">${p.category.categoryDetails}</span></h4>
					<c:url var="src" value="Resources/images/${p.pId }.png"></c:url>
			     	<img src="${src } " style="height:200px;width:200px;" class="img-responsive">
					<div class="caption">
								<h3 >${p.pName }</h3>
							</div>
								<h3>
								<label>&#8377 ${p.pPrice }</label></h3>
									<c:url var="url" value="/all/product/productdetails/${p.pId }"></c:url>
					                <a href="${url }" class="btn btn-primary btn-product"><span class="glyphicon glyphicon-info-sign"></span> Product Details</a> 
								<a href="" ng-click="addToCart(${p.pId })" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> ADD TO CART</a></div>
						</div>

						<p> </p>
					</div>
		
				</div>
			
  		  
		</c:forEach>
		
	<hr style="height:1px; background-color:white;">
	</div>
	<%@ include file="footer.jsp"%>
	
</body>
</html>