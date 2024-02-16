<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
<%@include file="Includes/AllCSS.jsp"%>

<!-- Custom CSS Styles -->
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
  }

  .container {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  }

  h1 {
    color: #dc3545;
    text-align: center;
    margin-bottom: 30px;
  }

  form {
    display: flex;
    flex-direction: column;
  }

  label {
    margin-bottom: 5px;
    font-weight: bold;
  }

  input[type="email"],
  input[type="password"] {
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ced4da;
    border-radius: 4px;
    box-sizing: border-box;
  }

  input[type="submit"] {
    padding: 10px;
    background-color: #dc3545;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  input[type="submit"]:hover {
    background-color: #c82333;
  }
</style>
</head>
<body>
  <div class="container">
    <h1>${message}</h1>
    <form action="validateadmin" method="post">
      <label for="email">Enter Email:</label>
      <input type="email" name="email" id="email">
      <label for="password">Enter Password:</label>
      <input type="password" name="password" id="password">
      <input type="submit" value="Login">
    </form>
  </div>
</body>
</html>
