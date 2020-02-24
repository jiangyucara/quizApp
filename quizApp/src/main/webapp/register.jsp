<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="nav.jsp" />
	<form action="register" method="post">
		Username : <input name="username" type="text"/><br>
		Password : <input name="password" type="text"/><br>
		Date of Birth : <input name="dob" type="text"/><br>
		Email : <input name="email" type="text"/><br>
		Phone Number : <input name="phone" type="text"/><br>
		<input name="submit" type="submit" value="Submit"/><br>
	</form>
	<a href="./index.jsp">Back to Login Page</a>
</body>
</html>