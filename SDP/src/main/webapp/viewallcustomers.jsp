<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #e0f7fa; /* Light blue background */
            font-family: 'Poppins', sans-serif;
            color: #212121; /* Dark text for contrast */
        }
        .content {
            margin-top: 60px;
        }
        .table-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 12px 32px rgba(0, 0, 0, 0.1);
        }
        .table th {
            background-color: #00796b; /* Teal background */
            color: #ffffff;
            font-weight: 600;
        }
        .table td {
            vertical-align: middle;
            font-size: 16px;
        }
        .btn {
            margin: 5px;
            font-size: 14px;
            font-weight: 500;
            padding: 10px 18px;
            border-radius: 30px;
            transition: all 0.3s ease;
        }
        .btn:hover {
            transform: scale(1.05);
        }
        .btn-warning {
            background-color: #ff9800;
            border-color: #ff9800;
        }
        .btn-warning:hover {
            background-color: #fb8c00;
            border-color: #fb8c00;
        }
        .btn-danger {
            background-color: #e91e63;
            border-color: #e91e63;
        }
        .btn-danger:hover {
            background-color: #d81b60;
            border-color: #d81b60;
        }
        .text-primary {
            color: #00796b !important; /* Teal text color */
        }
        .text-muted {
            color: #757575 !important;
        }
        .table-container h3 {
            font-size: 28px;
            font-weight: 600;
            color: #00796b; /* Teal header text */
        }
        .navbar {
            background-color: #00796b; /* Dark teal navbar */
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .navbar .navbar-brand {
            color: #ffffff;
            font-size: 26px;
            font-weight: 600;
        }
        .navbar .navbar-brand:hover {
            color: #ff9800; /* Orange hover for navbar */
        }
    </style>
</head>
<body>
    <%@include file="adminnavebar.jsp" %>

    <div class="container content">
        <!-- Customer Table -->
        <div class="table-container">
            <h3 class="text-center text-primary mb-4">View All Customers</h3>
            <table class="table table-striped table-bordered table-hover">
                <thead class="text-center">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Date of Birth</th>
                        <th>Email</th>
                        <th>Location</th>
                        <th>Contact Number</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${customerlist}" var="customer">
                        <tr>
                            <td class="text-center"><c:out value="${customer.id}" /></td>
                            <td><c:out value="${customer.name}" /></td>
                            <td class="text-center"><c:out value="${customer.gender}" /></td>
                            <td><c:out value="${customer.dateofbirth}" /></td>
                            <td><c:out value="${customer.email}" /></td>
                            <td><c:out value="${customer.location}" /></td>
                            <td class="text-center"><c:out value="${customer.contact}" /></td>
                            <td class="text-center">
                                <!-- Edit Button (links to edit page with customer ID) -->
                                <!-- a href="editCustomer?id=<c:out value='${customer.id}' />" class="btn btn-warning btn-sm">Edit</a-->
                                
                                <!-- Delete Button (links to delete customer by ID) -->
                                <a href="deleteCustomer?id=<c:out value='${customer.id}' />" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this customer?');">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <c:if test="${empty customerlist}">
                <p class="text-center text-muted">No customers found.</p>
            </c:if>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
