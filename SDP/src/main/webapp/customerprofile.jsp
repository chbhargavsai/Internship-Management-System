<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Home - Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif; /* New font */
            background: linear-gradient(to right, #ffecd2, #fcb69f); /* Soft gradient */
            margin: 0;
            padding: 0;
        }

        .profile-container {
            max-width: 700px;
            margin: 50px auto;
            background: white;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            border-radius: 15px;
            overflow: hidden;
        }

        .profile-header {
            text-align: center;
            background: linear-gradient(135deg, #ff7eb3, #ff758c); /* Bright gradient */
            color: white;
            padding: 25px;
        }

        .profile-header h2 {
            margin: 0;
            font-size: 26px;
            letter-spacing: 1px;
        }

        .profile-body {
            padding: 30px;
        }

        .profile-body p {
            font-size: 18px;
            margin: 12px 0;
            color: #333;
        }

        .profile-body p span {
            font-weight: bold;
            color: #ff758c; /* Matching accent color */
        }

        .btn-primary {
            margin-top: 25px;
            display: block;
            width: 100%;
            padding: 12px;
            font-size: 18px;
            font-weight: bold;
            background-color: #ff7eb3;
            color: white;
            border: none;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #ff758c;
        }
    </style>
</head>
<body>
    <%@include file="customernavbar.jsp" %>

    <div class="profile-container">
        <div class="profile-header">
            <h2>Welcome, <%= c.getName() %>!</h2>
        </div>
        <div class="profile-body">
            <p><span>ID:</span> <%= c.getId() %></p>
            <p><span>Name:</span> <%= c.getName() %></p>
            <p><span>Date of Birth:</span> <%= c.getDateofbirth() %></p>
            <p><span>Email:</span> <%= c.getEmail() %></p>
            <p><span>Location:</span> <%= c.getLocation() %></p>
            <p><span>Contact Number:</span> <%= c.getContact() %></p>
        </div>
    </div>
</body>
</html>
