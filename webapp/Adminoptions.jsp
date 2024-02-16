<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Management</title>
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
    max-width: 800px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  }

  h1 {
    color: #28a745;
    text-align: center;
    margin-bottom: 30px;
  }

  a {
    display: inline-block;
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    margin: 10px;
    border-radius: 4px;
    text-decoration: none;
    transition: background-color 0.3s;
  }

  a:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
  <div class="container">
    <h1>${message}</h1>
    <a href="addproduct">Add Product</a>
    <a href="viewallproducts">View All Products</a>
  </div>
</body>
</html>
