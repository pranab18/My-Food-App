<%@page import="com.jsp.foodapp.entitys.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Product</title>
<%@include file="Includes/AllCSS.jsp"%>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 0;
    }
    form {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
    }
    input[type="text"],
    input[type="number"] {
        width: calc(100% - 20px);
        margin-bottom: 10px;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
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
<%  Product product = (Product) request.getAttribute("productdata") ; %>

<form action="updateprod" method="post">
    <label for="id">ID:</label>
    <input type="number" id="id" name="id" value="<%= product.getId() %>" readonly> <br>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="<%= product.getName() %>"> <br>
    <label for="type">Type:</label>
    <input type="text" id="type" name="type" value="<%= product.getType() %>"> <br>
    <label for="cost">Cost:</label>
    <input type="number" id="cost" name="cost" value="<%= product.getCost() %>"> <br>
    <input type="submit" value="Update">
</form>

</body>
</html>
