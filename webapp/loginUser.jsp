<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="Includes/AllCSS.jsp"%>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.navbar-brand {
	font-size: 1.5rem;
	font-weight: bold;
}

.container {
	width: 400px;
	margin: 100px auto;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	padding: 20px;
	text-align: center;
}

h1 {
	color: #333;
}

input[type="email"], input[type="password"], input[type="submit"] {
	width: calc(100% - 20px);
	padding: 10px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 16px;
}

input[type="submit"] {
	background-color: #4caf50;
	color: white;
	border: none;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<!--login form-->
	<div class="container">
		<h1>Login</h1>
		<h6 style="color:red">${message}</h6>
		<form action="validateuser" method="post">
			<label for="email">Enter Email:</label><br> <input type="email"
				id="email" name="email" required><br> <label
				for="password">Enter Password:</label><br> <input
				type="password" id="password" name="password" required><br>
			<br> Don't have an account? <a href="adduser">Register here</a><br>
			<input type="submit" value="Login">
		</form>
	</div>

</body>
</html>
