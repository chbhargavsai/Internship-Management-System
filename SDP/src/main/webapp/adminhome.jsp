<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&family=Open+Sans:wght@300;400;600&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background: url('https://images.unsplash.com/photo-1541434934-d7f6e1d23b87?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDg2fHxwb3J0c3xlbnwwfDB8fHx8&ixlib=rb-1.2.1&q=80&w=1080') no-repeat center center fixed;
        background-size: cover;
        font-family: 'Roboto', sans-serif;
        color: #ecf0f1;
        margin: 0;
        padding: 0;
    }

    /* Welcome Section */
    .welcome-section {
        margin-top: 30px;
        text-align: center;
        padding: 50px;
        background: rgba(52, 152, 219, 0.85); /* Blue */
        color: white;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
    }

    .welcome-section h2 {
        font-size: 50px;
        font-weight: 700;
        margin-bottom: 20px;
        font-family: 'Playfair Display', serif;
    }

    .welcome-section p {
        font-size: 22px;
        color: #bdc3c7;
        margin-bottom: 0;
    }

    /* Action Cards */
    .action-cards {
        margin-top: 50px;
    }

    .card {
        border: none;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        margin-bottom: 30px;
    }

    .card:hover {
        transform: translateY(-8px);
        box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
    }

    .card img {
        width: 100%;
        height: 200px;
        object-fit: cover;
        border-bottom: 5px solid #f39c12; /* Yellow accent */
    }

    .card-title {
        font-size: 24px;
        font-weight: 600;
        color: #2c3e50;
        margin-top: 20px;
    }

    .card-text {
        font-size: 18px;
        color: #7f8c8d;
        margin-bottom: 20px;
    }

    .card .btn {
        border-radius: 30px;
        padding: 12px 30px;
        font-size: 18px;
        font-weight: 600;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    .card .btn-primary {
        background-color: #e74c3c; /* Red */
        border: none;
    }

    .card .btn-primary:hover {
        background-color: #c0392b;
    }

    .card .btn-info {
        background-color: #9b59b6; /* Purple */
        border: none;
    }

    .card .btn-info:hover {
        background-color: #8e44ad;
    }

    .container {
        background: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
    }

    /* Responsiveness */
    @media (max-width: 768px) {
        .card-title {
            font-size: 22px;
        }

        .card-text {
            font-size: 16px;
        }

        .container {
            padding: 20px;
        }
    }
</style>
</head>
<body>
<%@include file="adminnavebar.jsp" %>

<div class="container">
    <!-- Welcome Section -->
    <div class="welcome-section">
        <h2>Welcome Admin</h2>
        <p>Manage and oversee all internships seamlessly.</p>
    </div>
  
    <!-- Action Cards -->
    <div class="row action-cards">
        <div class="col-md-6 col-lg-4">
            <div class="card text-center">
                <img src="https://files.oaiusercontent.com/file-WiHZnmrf8xsohQjLypqTHv?se=2024-12-07T12%3A45%3A35Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3Da70a97bc-3529-4fbb-9649-97dec29d39d3.webp&sig=gexV%2BtKJbfNZJJiKgT0Ujtcq%2BaAnixBwl/PZ/pfERqg%3D" alt="Add Internship">
                <div class="card-body">
                    <h5 class="card-title">Add Internship</h5>
                    <p class="card-text">Create new internship opportunities for customers.</p>
                    <a href="/internship" class="btn btn-primary">Add Internship</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4">
            <div class="card text-center">
                <img src="https://files.oaiusercontent.com/file-8p9wiErW1DTYWcatSfG4VF?se=2024-12-07T12%3A47%3A20Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3De58825ec-981a-4f55-acba-382c8d0f1a81.webp&sig=G77MrZfV8SnVNQHpqGYHUL/x4mMprc4f6G1ZQRVC2HU%3D" alt="View Internships">
                <div class="card-body">
                    <h5 class="card-title">View Internships</h5>
                    <p class="card-text">Manage and edit existing internships.</p>
                    <a href="/viewInternships" class="btn btn-info">View Internships</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4">
            <div class="card text-center">
                <img src="https://files.oaiusercontent.com/file-KN97Ktt13KEGha1d67PQCm?se=2024-12-07T12%3A48%3A14Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3D06e101e7-bad5-46ab-a527-5fa31b27a324.webp&sig=%2BO1GvAhQqA8aOxf0BbvkKcHs1UJPZFYGUFiuKz0siqU%3D" alt="Applied Internships">
                <div class="card-body">
                    <h5 class="card-title">Applied Internships</h5>
                    <p class="card-text">Reject and Approve Applied internships.</p>
                    <a href="/appliedinternships" class="btn btn-info">Applied Internships</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4">
            <div class="card text-center">
                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.DTytVnCFh0hPfPa3PeaiGAHaEK%26pid%3DApi&f=1&ipt=14481b8eb665e98dc5e07556f5cdaffc1b2b95beb52521ed9c675c8ab3b61ea5&ipo=images" alt="Internship Submissions">
                <div class="card-body">
                    <h5 class="card-title">Internship Submissions</h5>
                    <p class="card-text">Review and approve internship submissions.</p>
                    <a href="/viewsubmissions" class="btn btn-info">Internship Submissions</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
