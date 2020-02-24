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
	<form action="quizProcessServlet" method="get">
			<c:out value="${sessionScope.index + 1}. ${sessionScope.questionList.get(sessionScope.index).getQuestionDescription()}"></c:out><br>	
				<c:forEach items="${sessionScope.questionList.get(sessionScope.index).getAvailableAnswers()}" var="answer">					
					<input type="radio" name="ans" value="${answer}">
					<label for="ans"><c:out value="${answer}"></c:out></label><br>					
				</c:forEach>
				
				<c:if test="${sessionScope.index != 0}">
					<input type="submit" value="previous" name="previous">
				</c:if>
				
				<c:if test="${sessionScope.index != 9}">			
					<input type="submit" value="next" name="next">
				</c:if>
				
				<input type="submit" value="submit" name="submit">
				
		<%--</c:forEach>--%>
	</form>
</body>
</html>