<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    Customer c = (Customer) session.getAttribute("customer");
    if (c == null) {
        response.sendRedirect("customerlogin.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Customer Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

    <style>
        /* General styling */
        body {
            background: linear-gradient(to right, #74ebd5, #9face6);
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
        }

        /* Sidebar styling */
        .sidebar {
            width: 250px;
            height: 100vh;
            background: linear-gradient(90deg, #1d976c, #93f9b9);
            color: white;
            padding: 20px;
            position: fixed;
            box-shadow: 4px 0px 10px rgba(0, 0, 0, 0.2);
        }

        .sidebar .app-icon {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
            cursor: pointer;
        }

        .sidebar .app-icon img {
            height: 50px;
            margin-right: 10px;
        }

        .sidebar .app-icon span {
            font-size: 24px;
            font-weight: bold;
        }

        .sidebar .nav-link {
            color: white;
            font-size: 16px;
            font-weight: 500;
            margin: 10px 0;
            text-decoration: none;
            transition: background-color 0.3s, color 0.3s;
            display: block;
            padding: 10px;
            border-radius: 5px;
        }

        .sidebar .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff;
        }

        /* Main content */
        .content {
            margin-left: 270px;
            padding: 20px;
            flex-grow: 1;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background: #1d976c;
            color: white;
            font-size: 14px;
        }

        footer a {
            color: #93f9b9;
            text-decoration: none;
            font-weight: 600;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="app-icon" onclick="location.href='/customerhome'">
            <img src="https://media.istockphoto.com/id/1429026700/vector/new-insights-blue-gradient-concept-icon.jpg?s=612x612&w=0&k=20&c=QiqApOuvzS73aFvoapp5uF28-2w7TlezmxioGmS9blk=" alt="KLAICTE Logo">
            <span>KLAICTE</span>
        </div>
        <a class="nav-link" href="customerhome">Home</a>
        <a class="nav-link" href="customerprofile">Customer Profile</a>
        <a class="nav-link" href="allinternship">Internships</a>
        <a class="nav-link" href="appliedinternship">Applied Internships</a>
        <a class="nav-link" href="customerlogout">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="content">
        <!-- Your main content here -->
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
