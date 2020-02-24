<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
	<title>Login or Register</title>
	<head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	</head>
	
	<body>
		<jsp:include page="nav.jsp" />
		<h2>Login or Register</h2>
		<form action="welcome" method="post">
			Username: <input name="username" type="text"/>
			<br>
			Password: <input name="password" type="text"/>
			<br>
			<input name="Login" type="submit" value="Login"/>
		</form>
		<form action="register" method="post">
			<input name="Register" type="submit" value="Register"/>
		</form>
	</body>

</html>
