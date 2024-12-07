<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<!-- Add CSS for background image and color scheme -->
<style>
    body {
        background-image: url('https://i.pinimg.com/736x/82/1e/23/821e23d70f5e2ffa87ad57fdb557d2e0.jpg'); /* Background image */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
        font-family: 'Arial', sans-serif;
        color: #f8f9fa; /* Light text color for contrast */
    }

    .container {
        background-color: rgba(0, 0, 0, 0.7); /* Dark semi-transparent background */
        padding: 20px;
        border-radius: 10px;
        max-width: 400px;
        margin: 90px auto;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.7);
        color: white; /* White text color for readability */
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        font-weight: bold;
        color: #ffdd57; /* Golden color for labels */
    }

    .form-control {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .button-container {
        display: flex;
        justify-content: space-between;
    }

    .btn {
        padding: 10px 20px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    .btn-success {
        background-color: #28a745; /* Green button color */
        color: white;
    }

    .btn-success:hover {
        background-color: #218838; /* Darker green on hover */
    }

    .btn-reset {
        background-color: #ff5722; /* Red button color for Reset */
        color: white;
    }

    .btn-reset:hover {
        background-color: #e64a19; /* Darker red on hover */
    }

    .signup-link {
        text-align: center;
        margin-top: 20px;
        font-size: 14px;
        color: #007bff;
    }

    .signup-link a {
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }

    .signup-link a:hover {
        text-decoration: underline;
    }

    h3 {
        font-size: 28px;
        font-weight: bold;
        color: #ff5722; /* Change this to any color you want */
        text-transform: uppercase;
        text-align: center;
        margin-top: 80px; /* Added margin to account for fixed navbar */
        margin-bottom: 20px; /* Added margin to space out the title from the form */
    }
</style>

</head>
<body>
<%@include file="mainnavebar.jsp" %>
<h4><c:out value="${message}"></c:out><br/></h4>
<h3>Customer Login Form</h3>
<div class="container">
    <form method="post" action="checkcustomerlogin">
        <div class="form-group">
            <label for="cemail">Enter Email</label>
            <input type="text" id="cemail" value="2200032957@kluniversity.in" class="form-control" name="cemail" required/>
        </div>

        <div class="form-group">
            <label for="cpwd">Enter Password</label>
            <input type="password" id="cpwd" value="1234" class="form-control" name="cpwd" required/>
        </div>

        <div class="button-container">
            <input type="submit" value="Login" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-reset"/>
        </div>
    </form>

    <!-- Signup Link -->
    <div class="signup-link">
        <p>Don't have an account? <a href="customerreg">Sign up</a></p>
    </div>
</div>
</body>
<%@include file="footer.jsp" %>
</html>
