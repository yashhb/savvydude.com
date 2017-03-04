<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="Resources/css/index.css">

</head>


<body>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img class="img-responsive center-block" src="Resources/images/cr1.jpg" alt="iPhone">
    </div>

    <div class="item">
      <img class="img-responsive center-block" src="Resources/images/cr2.jpg" alt="Samsung">
    </div>

    <div class="item">
      <img class="img-responsive center-block" src="Resources/images/cr3.jpg" alt="OnePlus">
    </div>
  </div>

  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

 <div class="container">
    	<div id="carousel">
			<figure> <img class="a" src="Resources/images/p1.jpg" alt="" width="100%" height="40%"> </figure>
			<figure> <img class="a" src="Resources/images/p2.jpg" alt="" width="100%" height="40%"> </figure>
			<figure> <img class="a" src="Resources/images/p4.jpg" alt="" width="100%" height="40%"> </figure>
			<figure> <img class="a" src="Resources/images/p6.jpg" alt="" width="100%" height="50%"> </figure>
			<figure> <img class="a" src="Resources/images/p8.jpg" alt="" width="100%" height="35%"> </figure>
			<figure> <img class="a" src="Resources/images/p9.png" alt="" width="100%" height="50%"> </figure>
			<figure> <img class="a" src="Resources/images/pp1.jpg" alt="" width="100%" height="40%"> </figure>
			<figure> <img class="a" src="Resources/images/pp2.jpg" alt="" width="100%" height="50%"> </figure>
			<figure> <img class="a" src="Resources/images/pp3.jpg" alt="" width="100%" height="50%"> </figure>
		</div>
	</div>
 </body>
</html>
<%@ include file="footer.jsp" %>
