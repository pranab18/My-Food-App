<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
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

  h2 {
    color: #007bff;
    text-align: center;
    margin-bottom: 30px;
  }

  .form-group {
    margin-bottom: 20px;
  }

  label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
  }

  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ced4da;
    border-radius: 4px;
    box-sizing: border-box;
  }

  input[type="submit"] {
    display: block;
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  input[type="submit"]:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
  <div class="container">
    <h2>Registration Form</h2>
    <form:form action="saveadmin" modelAttribute="object">
      <div class="form-group">
        <label for="name">Enter Name:</label>
        <form:input path="name" id="name"/>
      </div>
      <div class="form-group">
        <label for="email">Enter Email:</label>
        <form:input path="email" id="email"/>
      </div>
      <div class="form-group">
        <label for="password">Enter Password:</label>
        <form:input type="password" path="password" id="password"/>
      </div>
      <input type="submit" value="Submit">
    </form:form>
  </div>
</body>
</html>
