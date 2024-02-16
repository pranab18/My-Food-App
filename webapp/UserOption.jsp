<%@page import="com.jsp.foodapp.entitys.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="Includes/AllCSS.jsp"%>
<style>
/* Custom Styles */
/* You can add custom styles here */
/* Added Styles */
.container {
    text-align: center;
    margin-top: 50px;
}

.btn-order {
    display: inline-block;
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.btn-order:hover {
    background-color: #45a049;
}
</style>
</head>
<%
String userName ="";
User u =(User) session.getAttribute("user");
if(u!=null){
	userName = u.getName();
%>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-warning container-fluid">
        <div class="container-fluid gx-1">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">Food App</a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            </div>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link btn btn-success" href="loginUser.jsp"><i class="fas fa-user"></i>
                <%= userName %></a></li>
                <li style="margin-left: 4px" class="nav-item"><a class="nav-link btn btn-danger" href="logOut_User"><i class="fas fa-sign-out"></i>LogOut </a></li>
            </ul>
            
        </div>
    </nav>
<div class="container">
    <h1>Welcome to Our Food Ordering Service</h1>
    <a href="createorder" class="btn-order">Order Food</a>
</div>
<%
}
else{
	
%>
<div class="container">
    <h1>User Not Found</h1>
    <a href="usermenu.jsp" class="btn-order">GoTo HomePage</a>
</div>


<%}%>
</body>
</html>
