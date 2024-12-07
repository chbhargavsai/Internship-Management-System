<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Internships</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f2f2f2;
            color: #333;
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            padding: 50px;
        }

        h2 {
            text-align: center;
            color: #6a1b9a; /* Purple */
            font-weight: 600;
            margin-bottom: 30px;
        }

        h4 {
            color: #f39c12; /* Yellow */
            text-align: center;
        }

        .card {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            margin-bottom: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .card-title {
            font-size: 22px;
            font-weight: bold;
            color: #6a1b9a; /* Purple */
        }

        .card-text {
            color: #7f8c8d;
        }

        .btn {
            border-radius: 30px;
            background-color: #f39c12; /* Yellow */
            color: white;
            font-weight: 600;
            padding: 10px 20px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #e67e22; /* Darker yellow */
        }

        .apply-modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }

        .apply-modal .modal-content {
            background-color: #ffffff;
            padding: 25px;
            border-radius: 10px;
            width: 350px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        .apply-modal input,
        .apply-modal textarea {
            background-color: #f7f7f7;
            border: 1px solid #ccc;
            color: #333;
            padding: 12px;
            border-radius: 6px;
            width: 100%;
            margin-bottom: 15px;
        }

        .apply-modal textarea {
            resize: none;
            height: 120px;
        }

        .apply-modal button {
            background-color: #6a1b9a; /* Purple */
            color: white;
            border-radius: 25px;
            padding: 12px 25px;
            margin: 10px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .apply-modal button:hover {
            background-color: #9c27b0; /* Lighter purple */
        }

        .apply-modal button.cancel {
            background-color: #e74c3c; /* Red */
        }

        .apply-modal button.cancel:hover {
            background-color: #c0392b; /* Darker red */
        }

        .internship-card-wrapper {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
        }

        .col-md-4 {
            width: 30%;
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>
<%@include file="customernavbar.jsp" %> <!-- Include customer navbar -->

<div class="container mt-4">
    <h2>Available Internships</h2>
    <h4>${msg}</h4>
    
    <!-- Check if internships are available -->
    <c:choose>
        <c:when test="${not empty internships}">
            <div class="internship-card-wrapper">
                <c:forEach var="internship" items="${internships}">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">${internship.title}</h5>
                                <p class="card-text text-truncate">${internship.description}</p>
                                <p class="card-text"><strong>Duration:</strong> ${internship.duration}</p>
                                <p class="card-text"><strong>Stipend:</strong> ${internship.stipend}</p>
                                <p class="card-text"><strong>Closing date:</strong> ${internship.closingdate}</p>
                                
                                <!-- Apply button with onclick to show modal -->
                                <a href="javascript:void(0);" class="btn" onclick="showApplyModal(${internship.id})">Apply</a>
                            </div>
                        </div>
                    </div>

                    <!-- Modal for applying to internship -->
                    <div id="applyModal${internship.id}" class="apply-modal">
                        <div class="modal-content">
                            <h4>Apply for Internship</h4>
                            <form action="applyinternship" method="get">
                                <label for="applicationMessage">Enter a message (optional):</label><br/>
                                <input type="text" name="id" hidden="" value="${internship.id}" />
                                <textarea id="applicationMessage${internship.id}" name="datalink"></textarea><br/><br/>
                                <button type="submit">Submit</button>
                                <button type="button" class="cancel" onclick="closeModal(${internship.id})">Cancel</button>
                            </form>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:when>
        <c:otherwise>
            <div class="text-center">
                <p>No internships available at the moment.</p>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function showApplyModal(internshipId) {
        document.getElementById('applyModal' + internshipId).style.display = 'flex';
    }

    function closeModal(internshipId) {
        document.getElementById('applyModal' + internshipId).style.display = 'none';
    }
</script>
</body>
</html>
