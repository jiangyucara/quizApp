<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<jsp:include page="nav.jsp" />
		<meta charset="ISO-8859-1">
		<title>Quiz Homepage</title>
		<style>
			img {
			  height: 100%;
			  width: 100%;
			  border-radius: 20%;
			}
		</style>
	</head>
	<body>
	<div class="row">
	<form action="loadQuizServlet" method="get">
		<c:forEach var="subject" items="${subjectList}">
		    
		  <div class="col-lg-4 col-md-6 col-sm-6" align="center">
		    <img src="${subject.getImageLink()}" class="rounded float-left" alt="${subject.getSubjectName()}">
		  	<p align="center"><input type="submit" name="quiz" value="${subject.getSubjectName()}">  </p>

		  </div>
			
		</c:forEach>
	</form>
	</div>

	
	</body>
</html>