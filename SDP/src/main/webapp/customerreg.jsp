<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Register Form</title>
    <%@include file="mainnavebar.jsp" %>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to left, #ff9a8b, #ff6a00);
            font-family: 'Quicksand', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 12px;
            max-width: 650px;
            margin: 50px auto;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
        }

        h3 {
            text-align: center;
            font-size: 32px;
            font-weight: 500;
            margin-bottom: 30px;
            color: #1a1a1a;
            font-family: 'Quicksand', sans-serif;
        }

        h4 {
            text-align: center;
            font-size: 18px;
            color: #f44336;
            margin-bottom: 20px;
            font-family: 'Quicksand', sans-serif;
        }

        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            display: block;
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 16px;
            color: #333;
        }

        .form-control {
            width: 100%;
            padding: 14px;
            border-radius: 6px;
            border: 1px solid #ddd;
            font-size: 15px;
            color: #555;
            outline: none;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease-in-out;
        }

        .form-control:focus {
            border-color: #ff6a00;
            box-shadow: 0 0 8px rgba(255, 106, 0, 0.6);
        }

        .form-group input[type="radio"] {
            margin-right: 8px;
        }

        .form-check-label {
            margin-right: 20px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .btn {
            padding: 14px 24px;
            font-size: 16px;
            font-weight: 600;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .btn-success {
            background-color: #ff6a00;
            color: white;
        }

        .btn-success:hover {
            background-color: #e55b00;
        }

        .btn-success:active {
            background-color: #cc4a00;
        }

        .form-group input[type="submit"],
        .form-group input[type="reset"] {
            width: 48%;
        }

        @media (max-width: 768px) {
            .container {
                padding: 30px;
            }

            .form-group label {
                font-size: 14px;
            }

            .form-control {
                font-size: 14px;
            }

            .btn {
                font-size: 14px;
                padding: 12px 20px;
            }
        }
    </style>
</head>
<body>
    <h3>Customer Register Form</h3>
    <div class="container">
        <h4>${message }</h4>
        <form method="post" action="insertcustomer">
            <div class="form-group">
                <label for="cname">Enter Name</label>
                <input type="text" id="cname" class="form-control" name="cname" placeholder="Your full name" required>
            </div>

            <div class="form-group gender-container">
                <label>Select Gender</label>
                <div>
                    <input type="radio" id="male" name="cgender" class="form-check-input" value="MALE" required>
                    <label for="male" class="form-check-label">Male</label>
                    <input type="radio" id="female" name="cgender" class="form-check-input" value="FEMALE" required>
                    <label for="female" class="form-check-label">Female</label>
                    <input type="radio" id="others" name="cgender" class="form-check-input" value="OTHERS" required>
                    <label for="others" class="form-check-label">Others</label>
                </div>
            </div>

            <div class="form-group">
                <label for="cdob">Select Date of Birth</label>
                <input type="date" id="cdob" class="form-control" name="cdob" required>
            </div>

            <div class="form-group">
                <label for="cemail">Enter Email ID</label>
                <input type="email" id="cemail" class="form-control" name="cemail" placeholder="Your email address" required>
            </div>

            <div class="form-group">
                <label for="cpwd">Enter Password</label>
                <input type="password" id="cpwd" class="form-control" name="cpwd" placeholder="Create a password" required>
            </div>

            <div class="form-group">
                <label for="clocation">Enter Location</label>
                <input type="text" id="clocation" class="form-control" name="clocation" placeholder="City, State" required>
            </div>

            <div class="form-group">
                <label for="ccontact">Enter Contact</label>
                <input type="text" id="ccontact" class="form-control" name="ccontact" placeholder="Your phone number" required>
            </div>

            <div class="button-container">
                <input type="submit" value="Register" class="btn btn-success">
                <input type="reset" value="Clear" class="btn btn-success">
            </div>
        </form>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>
