<%@page import="com.jsp.foodapp.entitys.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 0;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }
    th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
        vertical-align: middle;
    }
    th {
        background-color: #FDAE1D;
        color: white;
    }
    tr:hover {
        background-color: #FBA171;
    }
    h1 {
        margin-top: 20px;
        text-align: center;
    }
    .add-item-link,
    .submit-order-btn {
        text-decoration: none;
        color: #007bff;
        padding: 10px 20px;
        border-radius: 4px;
        transition: background-color 0.3s, color 0.3s;
        display: inline-block;
    }
    .add-item-link:hover {
        background-color: #d4edda;
        color: #28a745;
    }
    .submit-order-btn:hover {
        background-color: #007bff;
        color: white;
    }
</style>
</head>
<body>
<%@include file="Includes/navbar.jsp" %>
<%
List<Product> products = (List) request.getAttribute("productslist");
%>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Type</th>
            <th>Cost</th>
            <th>Add Item</th>
        </tr>
    </thead>
    <tbody>
        <%
        for (Product p : products) {
        %>
        <tr>
            <td><%=p.getId()%></td>
            <td><%=p.getName()%></td>
            <td><%=p.getType()%></td>        
            <td>₹<%=p.getCost()%></td>
            <td><a class="add-item-link" href="additem?id=<%=p.getId()%>">Add</a></td>
        </tr>
        <%
        }
        %>
    </tbody>
</table>

<h1>
    <a class="submit-order-btn" href="submitfoodorder">Submit Order</a>
</h1>

</body>
</html>
