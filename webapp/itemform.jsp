<%@page import="com.jsp.foodapp.entitys.Item"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Item to Food Order</title>
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
    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
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
<%
    Item i = (Item) request.getAttribute("itemobj");
%>

<form:form action="additemtofoodorder" modelAttribute="itemobj">
    <label for="name">Name:</label>
    <form:input id="name" path="name" value="<%= i.getName() %>" readonly="true" />
    <label for="type">Type:</label>
    <form:input id="type" path="type" value="<%= i.getType() %>" readonly="true"/>
    <label for="cost">Cost:</label>
    <form:input id="cost" path="cost" value="<%= i.getCost()%>" readonly="true" />
    <label for="quantity">Quantity:</label>
    <form:input id="quantity" path="quantity" />
    <input type="submit" value="Add to Order">
</form:form>

</body>
</html>
