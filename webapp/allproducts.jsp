<%@page import="com.jsp.foodapp.entitys.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<%@include file="Includes/AllCSS.jsp"%>

<!-- Custom CSS Styles -->
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
  }

  th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  th {
    background-color: #007bff;
    color: #fff;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #ddd;
  }

  .edit-link {
    display: inline-block;
    background-color: #28a745;
    color: #fff;
    padding: 8px 12px;
    text-decoration: none;
    border-radius: 4px;
    transition: background-color 0.3s;
  }

  .edit-link:hover {
    background-color: #218838;
  }

  .delete-link {
    display: inline-block;
    background-color: #dc3545;
    color: #fff;
    padding: 8px 12px;
    text-decoration: none;
    border-radius: 4px;
    transition: background-color 0.3s;
  }

  .delete-link:hover {
    background-color: #c82333;
  }

  .logout-link {
    display: inline-block;
    background-color: #FE0000;
    color: #212529;
    padding: 8px 12px;
    text-decoration: none;
    border-radius: 4px;
    transition: background-color 0.3s;
  }

  .logout-link:hover {
    background-color: #e0a800;
  }
</style>
</head>
<body>
  <table>
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Type</th>
        <th>Cost</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      <%
      List<Product> products = (List<Product>) request.getAttribute("productslist");
      for (Product p : products) {
      %>
      <tr>
        <td><%=p.getId()%></td>
        <td><%=p.getName()%></td>
        <td><%=p.getType()%></td>
        <td>₹<%=p.getCost()%></td>
        <td><a href="editproduct?id=<%=p.getId()%>" class="edit-link">Edit</a></td>
        <td><a href="deleteproduct?id=<%=p.getId()%>" class="delete-link">Delete</a></td>
      </tr>
      <%
      }
      %>
    </tbody>
  </table>

  <a href="Adminmenu.jsp" class="logout-link">Logout</a>
</body>
</html>
