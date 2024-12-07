<%@ page import="com.klef.jfsd.springboot.model.Admin" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
Admin admin = (Admin) session.getAttribute("admin");
if(admin==null)
{
    response.sendRedirect("adminlogin.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JFSD - Admin Dashboard</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f7f6;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            background: linear-gradient(135deg, #00bcd4, #8e2de2);
            padding: 15px;
            border-radius: 50px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            display: flex;
            align-items: center;
            gap: 15px;
            width: 100%;
            max-width: 350px;
            z-index: 999;
        }
        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            color: #fff !important;
            text-transform: uppercase;
        }
        .navbar-text {
            color: #fff;
            font-size: 18px;
            font-weight: 600;
            margin-right: 20px;
        }
        .btn {
            font-size: 16px;
            padding: 10px 25px;
            border-radius: 30px;
            transition: transform 0.3s, background-color 0.3s;
            font-weight: 500;
        }
        .btn:hover {
            transform: scale(1.05);
        }
        .btn-success {
            background-color: #4caf50;
            color: #fff;
        }
        .btn-success:hover {
            background-color: #388e3c;
        }
        .btn-info {
            background-color: #2196f3;
            color: #fff;
        }
        .btn-info:hover {
            background-color: #1976d2;
        }
        .btn-danger {
            background-color: #f44336;
            color: #fff;
        }
        .btn-danger:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>

    <!-- Admin Dashboard Content -->
    <div class="container mt-5 pt-5">
        <!-- Add your dashboard content here -->
        <h1 class="text-center mt-5">Welcome to the Admin Dashboard</h1>
        <p class="text-center">Manage customers and more...</p>
    </div>

    <!-- Navbar -->
    <nav class="navbar">
        <a class="navbar-brand" href="#">KLAICTE</a>
        <span class="navbar-text">
            Welcome, <%= admin.getUsername() %> !
        </span>
        <div>
            <a href="adminhome" class="btn btn-success">Home</a>
            <a href="viewallcustomers" class="btn btn-info">View Customers</a>
            <a href="/adminlogout" class="btn btn-danger">Logout</a>
        </div>
    </nav>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
