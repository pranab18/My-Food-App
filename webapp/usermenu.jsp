<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Our Website</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f9f9f9;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	text-align: center;
	padding: 50px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
}

h1 {
	color: #333;
	margin-bottom: 30px;
}

a {
	text-decoration: none;
	color: #fff;
	background-color: #4CAF50;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

a:hover {
	background-color: #45a049;
}

.btn-secondary {
	background-color: #f44336;
}

.btn-secondary:hover {
	background-color: #d32f2f;
}

.hidden {
	display: none;
}
</style>
</head>
<body>
	
	<div class="container">
		<h1>Welcome to Our Website</h1>
		<a href="adduser">Create Account</a> <a href="loginUser.jsp"
			class="btn-secondary">Login</a>

		<div class="m-4" id="alterMessage">
			${message}
		</div>
	</div>

	<script>
		var elementToHide = document.getElementById("alterMessage");
		function hideElement() {
			elementToHide.classList.add("hidden");
		}
		setTimeout(hideElement, 3000);
	</script>
</body>
</html>
