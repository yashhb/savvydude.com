<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>HOME-savvydude</title>
<link rel="stylesheet" href="Resources/css/header.css">
</head>
<body>
<div class="container-fluid" style="margin-left:0px; margin-top:0px; margin-right:0px; background-color:#C5C5C5">
<div class="row">
<div class="col-lg-4">
<img class="img-responsive " src="Resources/images/logo.png" alt="logo" style="width:50%; height:140px;">
</div>
<div class="col-lg-8" >
<img class="img-responsive" src="Resources/images/banner2.png" alt="banner" style="width:130%; height:140px;">
</div>
</div>
</div>
<div class="navbar navbar-default " role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">savvydude</a>
        </div>
        <div class="collapse navbar-collapse">
<ul class="nav navbar-nav navbar-right">
        <c:if test="${pageContext.request.userPrincipal.name !=null }">
        <li><a href="">Welcome! ${pageContext.request.userPrincipal.name }</a></li>
       </c:if>
        <c:if test="${pageContext.request.userPrincipal.name ==null }">
	    <li><a href="<c:url value="/register"></c:url>"><span class="glyphicon glyphicon-pencil"></span>    Register</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>    Login</a></li>
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name !=null }">
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>"><span class="glyphicon glyphicon-log-out"></span>   Logout</a></li>
			</c:if>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>    Shopping Cart:0</a></li>
       </ul>
            <ul class="nav navbar-nav">
                <li class="active"><a href="home">Home</a></li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Categories <b class="caret"></b></a>
                    <ul class="dropdown-menu multi-level">
                        <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Companies</a>
                            <ul class="dropdown-menu">
                                 <li class="dropdown-submenu">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Apple</a>
                                    <ul class="dropdown-menu">
                                    <li><a href="#">iWatch</a></li>
                                    <li><a href="#">iPod</a></li>
                                    <li><a href="#">iMac</a></li>
                                    <li><a href="#">iPad</a></li>
                                        <li class="dropdown-submenu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">iPhones</a>
                                                 <ul class="dropdown-menu">
                                                <li><a href="#">iPhone 5s</a></li>
                                                <li><a href="#">iPhone 6 </a></li>
                                                <li><a href="#">iPhone 6s</a></li>
                                                <li><a href="#">iPhone 6s Plus</a></li>
                                                <li><a href="#">iPhone 5se</a></li>
                                                <li><a href="#">iPhone 7</a></li>
                                                <li><a href="#">iPhone 7 Plus</a></li>
                                            </ul>
                                    </li>
                                    </ul>
                                    
                                     <li class="dropdown-submenu">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Samsung </a>
								     <ul class="dropdown-menu">								    
								    <li class="dropdown-submenu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Phones</a>
                                                 <ul class="dropdown-menu">
                                                 <li class="dropdown-submenu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Galaxy J</a>
                                             <ul class="dropdown-menu">
                                               <li><a href="#">Galaxy J2</a></li>
                                              <li><a href="#">Galaxy J5</a></li>
                                              <li><a href="#">Galaxy J7</a></li>
                                              </ul></li>
                                        <li class="dropdown-submenu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Galaxy Note</a>
                                            <ul class="dropdown-menu">
                                            <li><a href="#">Galaxy Note 3</a></li>
                                            <li><a href="#">Galaxy Note 4</a></li>
                                            <li><a href="#">Galaxy Note 5</a></li>
                                            </ul>
                                            </li>
                                              <li class="dropdown-submenu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Galaxy S</a>
                                            <ul class="dropdown-menu">
                                            <li><a href="#">Galaxy S4</a></li>
                                            <li><a href="#">Galaxy S5</a></li>
                                            <li><a href="#">Galaxy S5</a></li>
                                            <li><a href="#">Galaxy S6 Edge</a></li>
                                            <li><a href="#">Galaxy S7 Edge</a></li>
                                            </ul>
                                            </li>
                                            </ul>
                                       <li class="dropdown-submenu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Smart Watches</a>
                                          <ul class="dropdown-menu">
                                            <li><a href="#"> Samsung Gear 2</a></li>
                                       </ul>
                                    </li>	</ul>
                                    <li class="dropdown-submenu">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"> One Plus </a>
                                       <ul class="dropdown-menu">								    
								    <li class="dropdown-submenu">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Phones</a>
                                                 <ul class="dropdown-menu">
                                                 <li><a href="#">OnePlus 2</a></li>
                                                 <li><a href="#">OnePlus 3</a></li>
                                                 </ul></li></ul>                                   								    
                                    </li></ul></li>
                           <li class="dropdown-submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Operating System</a>
                           <ul class="dropdown-menu">
                                    <li><a href="#">iOS  </a></li>
                                    <li><a href="#">Android </a></li>
                                    <li><a href="#">Windows </a></li>
                               </ul></li>   		                                    
                            </ul>
                        </li>
                                   
                <li>   <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Products <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Phones</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Smart Watches</a></li>
                        <li class="divider"></li>
                        <li><a href="#">iPods</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Desktops</a></li>
                        
                           </ul>
                </li>
           </ul>
        </div>
    </div>
</div>
</body>
</html>