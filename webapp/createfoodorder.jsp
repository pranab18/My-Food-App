<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Food Order Form</title>
    <%@include file="Includes/AllCSS.jsp"%>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f7f7f7;
            font-family: Arial, sans-serif;
        }
        .form-container {
            margin-top: 50px;
            max-width: 400px;
            padding: 20px;
            background-color: ;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .form-heading {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-control {
            margin-bottom: 20px;
        }
        .submit-btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<!--navbar-->
<%@include file="Includes/navbar.jsp" %>
<!--order food-->
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="form-container">
                <h2 class="form-heading">Order Food</h2>
                <form:form action="savefoodorder" modelAttribute="foodorder">
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <form:input path="name" id="name" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="mobilenumber">Mobile Number:</label>
                        <form:input path="mobilenumber" id="mobilenumber" class="form-control" />
                    </div>
                    <button type="submit" class="submit-btn btn btn-block">Submit</button>
                </form:form>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
