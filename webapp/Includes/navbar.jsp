<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="AllCSS.jsp"%>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<style>
/* Custom Styles */
.navbar-brand {
    font-size: 1.5rem;
    font-weight: bold;
}

.navbar-nav .nav-link {
    font-size: 1.2rem;
    margin-right: 15px;
}

.navbar-nav .nav-link.active {
    color: #0d6efd;
}

.nav-item:last-child .nav-link {
    margin-right: 0;
}

.navbar-nav .nav-link:hover {
    color: #0d6efd;
}

/* Added Styles */
.search-form {
    flex: 1;
}

.nav-item {
    margin-left: 10px; /* Adjust as needed */
}
</style>
</head>
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
                <li class="nav-item"><a class="nav-link btn btn-success" href="loginUser.jsp"><i class="fas fa-user"></i> John Doe</a></li>
            </ul>
            
        </div>
    </nav>
    
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
