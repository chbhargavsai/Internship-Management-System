<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&family=Ubuntu:wght@400;500&display=swap" rel="stylesheet">
    <style>
        /* General Styling */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #2a2a72; /* Deep blue background */
            color: #f8f9fa;
        }

        h1, h2, h3 {
            font-family: 'Ubuntu', sans-serif;
        }

        /* Welcome Banner Styling */
        .welcome-banner {
            text-align: center;
            background: linear-gradient(135deg, #f64f59, #c471ed, #12c2e9); /* Vibrant gradient */
            color: white;
            padding: 50px 20px;
            border-radius: 12px;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.3);
            margin: 30px 0;
        }

        .welcome-banner h1 {
            font-size: 42px;
            margin-bottom: 15px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.4);
        }

        .welcome-banner p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        /* Button Styling */
        .btn-primary {
            background-color: #12c2e9;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 15px;
            font-weight: bold;
            border-radius: 25px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            text-decoration: none;
        }

        .btn-primary:hover {
            background-color: #f64f59;
        }

        /* Department Section */
        .departments {
            padding: 50px 20px;
            background-color: #4a47a3; /* Muted purple for content area */
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            text-align: left; /* Ensure left alignment for all content */
        }

        .departments .department {
            background: #1b262c; /* Dark contrasting background */
            color: #bbe1fa; /* Light text for contrast */
            border-radius: 10px;
            padding: 20px;
            margin: 15px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .departments h2 {
            margin-bottom: 30px;
            font-family: 'Ubuntu', sans-serif;
            color: #12c2e9; /* Accent color for headings */
            text-align: left; /* Align heading to the left */
        }

        .department h3 {
            color: #f64f59;
        }

        /* Footer */
        .footer {
            background-color: #1b262c; /* Dark footer */
            color: #bbe1fa;
            padding: 20px 0;
            text-align: center;
            margin-top: 30px;
            font-family: 'Ubuntu', sans-serif;
        }

        .footer a {
            color: #12c2e9;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%@include file="customernavbar.jsp" %><br/><br/>

    <!-- Welcome Banner -->
    <div class="container">
        <div class="welcome-banner">
            <h1>Welcome, <%= c.getName() %>!</h1>
            <p>Your journey towards growth and learning begins here. Explore new opportunities and enhance your skills with our curated internships.</p>
        </div>
    </div>

    <!-- Department Section -->
    <div class="departments container">
        <h2>Explore Our Departments</h2>
        <div class="department">
            <h3>Web Development</h3>
            <p>Learn how to design, build, and maintain modern, responsive websites using the latest web technologies.</p>
            <strong>Key Skills:</strong> HTML, CSS, JavaScript, React, Angular, Node.js.
        </div>
        <div class="department">
            <h3>Full-Stack Development</h3>
            <p>Master both front-end and back-end technologies to build dynamic, scalable web applications.</p>
            <strong>Key Skills:</strong> MERN Stack (MongoDB, Express, React, Node.js), MEAN Stack (Angular instead of React), Python (Django/Flask).
        </div>
        <div class="department">
            <h3>Data Science</h3>
            <p>Dive into data analysis, visualization, and machine learning to unlock valuable insights.</p>
            <strong>Key Skills:</strong> Python, R, SQL, Machine Learning, Data Visualization (Tableau, Power BI).
        </div>
    </div>

</body>
</html>
