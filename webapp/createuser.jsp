<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
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
	margin: 50px auto;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	padding: 20px;
	text-align: center;
}

h1 {
	color: #333;
}

input[type="text"], input[type="email"], input[type="password"], input[type="submit"]
	{
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

.error-message {
	color: red;
	font-size: 14px;
}
</style>
</head>
<body>
	<!--Registration Form-->
	<div class="container">
		<h1>User Registration</h1>
		<form:form action="saveuser" modelAttribute="user">
			<label for="name">Name:</label>
			<br>
			<form:input path="name" id="name" />
			<br>
			<label for="email">Email:</label>
			<br>
			<form:input path="email" id="email" />
			<br>
			<label for="password">Password:</label>
			<br>
			<form:input path="password" id="password" />
			<br>
			<label for="mobilenumber">Mobile Number:</label>
			<br>
			<form:input path="mobilenumber" id="mobilenumber" />
			<br>
			<input type="submit" value="Register">
		</form:form>
		<div class="error-message">
			<!-- Add error message here if needed -->
		</div>
	</div>

	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
