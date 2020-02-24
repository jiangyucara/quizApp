<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="nav.jsp" />
	<h1>You have submitted the quiz. </h1>
	<c:forEach items="${sessionScope.questionList}" var="question">
		<c:out value="${question.getQuestionDescription()}"></c:out><br>
		<c:choose>
			<c:when test="${question.isCorrect()}">
				right
			</c:when>
			<c:otherwise>
				wrong
			</c:otherwise>
		</c:choose><br>
	</c:forEach>
</body>
</html>