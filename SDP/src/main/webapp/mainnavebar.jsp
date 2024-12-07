<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Internship Management System</title>

    <style>
        /* Global Style */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://static1.bigstockphoto.com/1/3/1/large1500/131857979.jpg') no-repeat left center fixed;
            background-size: cover;
            color: white;
        }

        /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.9);
            padding: 10px 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.7);
        }

        .navbar .app-icon {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        .navbar img {
            width: 50px;
            height: 50px;
            margin-right: 10px;
            border-radius: 50%;
            border: 2px solid white;
        }

        .navbar span {
            font-size: 24px;
            font-weight: bold;
            color: #ffdd57;
        }

        .navbar .links a,
        .navbar .right-links a {
            color: #ffdd57;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            margin: 0 10px;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar .links a:hover,
        .navbar .right-links a:hover {
            background-color: rgba(255, 255, 255, 0.3);
        }

        /* Hero Section */
        .hero {
            text-align: left;
            padding: 50px 20px;
            color: white;
            background: rgba(0, 0, 0, 0.8);
            border-radius: 15px;
            margin: 30px 20px;
        }

        .hero h1 {
            font-size: 40px;
            margin-bottom: 20px;
            font-weight: bold;
            color: #ffdd57;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 20px;
            line-height: 1.5;
        }

        /* Footer */
        .footer {
            background-color: rgba(0, 0, 0, 0.9);
            color: white;
            padding: 15px;
            text-align: center;
        }

        .footer a {
            color: #ffdd57;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- Navbar Section -->
    <div class="navbar">
        <!-- Application Icon -->
        <div class="app-icon" onclick="location.href='/'">
            <img src="https://media.istockphoto.com/id/1429026700/vector/new-insights-blue-gradient-concept-icon.jpg?s=612x612&w=0&k=20&c=QiqApOuvzS73aFvoapp5uF28-2w7TlezmxioGmS9blk=" alt="KLAICTE Logo">
            <span>Internship Management</span>
        </div>
        <!-- Navigation Links -->
        <div class="links">
            <a href="/">Home</a>
            <a href="about">About Us</a>
            <a href="contact.jsp">Contact</a>
        </div>
        <!-- Right-aligned links -->
        <div class="right-links">
            <a href="customerlogin">Customer Login</a>
            <a href="adminlogin">Admin Login</a>
        </div>
    </div>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Welcome to Internship Management System</h1>
        <p>Streamline your internship applications, track progress, and explore opportunities with ease. Our system ensures a smooth and efficient experience for students, administrators, and organizations alike.</p>
    </div>

    <!-- Footer Section -->
    
</body>
</html>
