<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<body>

	<jsp:include page="nav.jsp" />
	
	<c:if test="${not empty sessionScope.username}">	
		<h1>You have logged in successfully</h1>
		<h3>Here is your account info:</h3>
		 
		<%=session.getAttribute("info")%>
	</c:if>
	<c:if test="${empty sessionScope.username}">
		<h1>You have not logged in, please go back to the log in page.</h1>
	</c:if>	   
 		
	
</body>
</html>