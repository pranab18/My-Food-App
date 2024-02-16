<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="Includes/AllCSS.jsp"%>

<!-- CSS Styles -->
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .container {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: center;
  }

  h2 {
    color: #333;
  }

  a {
    color: #007bff;
    text-decoration: none;
  }

  a:hover {
    text-decoration: underline;
  }

  .btn {
    display: inline-block;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  .btn:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
  <div class="container">
    <h2>Welcome to Our Food Website</h2>
    <a href="addadmin" class="btn btn-primary">Create Account</a>
    <br><br>
    <a href="LoginAdmin.jsp" class="btn btn-success">Login</a>
  </div>
</body>
</html>
