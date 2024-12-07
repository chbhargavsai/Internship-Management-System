<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;600&family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Lora', serif;
            margin: 0;
            padding: 0;
            background-color: #1a1a2e; /* Dark background for a modern look */
            color: #f1f1f1;
        }
        .header {
            background-color: #0f3460; /* Deep blue for header */
            color: #e94560; /* Bright contrast for text */
            padding: 20px 0;
            text-align: center;
        }
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
            background-color: #16213e; /* Muted dark background for content area */
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            color: #e4e4e4;
        }
        .about-section {
            margin-bottom: 30px;
        }
        .about-section h2 {
            color: #e94560; /* Accent color for headings */
            margin-bottom: 15px;
            font-weight: 600;
            font-family: 'Montserrat', sans-serif;
        }
        .about-section p {
            line-height: 1.8;
            font-size: 18px;
            color: #dcdde1;
        }
        .team {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .team-member {
            flex: 1 1 300px;
            max-width: 300px;
            text-align: center;
            background-color: #0f3460; /* Deep blue for card background */
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .team-member:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
        }
        .team-member img {
            border-radius: 50%;
            width: 120px;
            height: 120px;
            margin-bottom: 15px;
        }
        .team-member h3 {
            margin: 10px 0 5px 0;
            font-size: 20px;
            font-weight: 600;
            font-family: 'Montserrat', sans-serif;
            color: #e94560;
        }
        .team-member p {
            font-size: 16px;
            font-style: italic;
            color: #c4c4c4;
        }
        /* Footer Styling */
        .footer {
            background-color: #0f3460;
            color: #e94560;
            text-align: center;
            padding: 10px 0;
            margin-top: 30px;
            font-family: 'Montserrat', sans-serif;
        }
    </style>
</head>
<body>
<%@include file="mainnavebar.jsp" %>

<div class="container">
    <div class="about-section">
        <h2>Our Story</h2>
        <p>Welcome to KLAICTE, where we bridge the gap between academia and the professional world. Our platform began in 2020 with a vision to offer exceptional internship opportunities for aspiring students. We have collaborated with various organizations to bring real-world experiences to students, helping them to build their careers and grow professionally.</p>
    </div>
    <div class="about-section">
        <h2>Our Mission</h2>
        <p>Our mission is to empower students by providing them with high-quality internship opportunities that enhance their learning experiences. At KLAICTE, we are committed to facilitating growth, skill development, and hands-on exposure in a variety of fields to prepare students for the challenges of the workforce.</p>
    </div>
    <div class="about-section">
        <h2>Meet the Team</h2>
        <div class="team">
            <div class="team-member">
                <img src="https://via.placeholder.com/150" alt="Team Member">
                <h3>A</h3>
                <p>Founder & CEO</p>
            </div>
            <div class="team-member">
                <img src="https://via.placeholder.com/150" alt="Team Member">
                <h3>B</h3>
                <p>Head of Internship Programs</p>
            </div>
            <div class="team-member">
                <img src="https://via.placeholder.com/150" alt="Team Member">
                <h3>C</h3>
                <p>Marketing Manager</p>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
