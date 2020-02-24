<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Navbar</title>
<style>
	body {
	  margin-left: 120px;
	  margin-right: 120px;
	}		
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
 	<a class="navbar-brand">
 	Welcome
 		<c:if test="${not empty sessionScope.username}">
	 		<c:out value="${sessionScope.username}"></c:out>
	 	</c:if>
 	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	</button>
  	<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
	    <div class="navbar-nav">
	      <a class="nav-item nav-link" href="home.jsp">
	      	Account <span class="sr-only"></span>
	      </a>
	      <a class="nav-item nav-link" href="showQuizServlet">Take a quiz! <span class="sr-only"></span></a>
	      <a class="nav-item nav-link" href="feedback.jsp">Feedback <span class="sr-only"></span></a>
	      <a class="nav-item nav-link" href="contact.jsp">Contact Us<span class="sr-only"></span></a>
	      
      	<c:if test="${not empty sessionScope.username}">	
 			<a class="nav-item nav-link" href="LogOutServlet">
 				Log Out<span class="sr-only"> </span>
 			</a>
 		</c:if>
 		<c:if test="${empty sessionScope.username}">
 			<a class="nav-item nav-link" href="index.jsp">
 				Log In<span class="sr-only"> </span>
 			</a>
 		</c:if>	    
	     
	    </div>
  	</div>
</nav>
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.12.0/js/mdb.min.js"></script>
</html>