<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Internship</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<style>
    body {
        background: linear-gradient(to right, #ff7e5f, #feb47b); /* Peach & Orange Gradient */
        font-family: 'Poppins', sans-serif;
        color: #fff;
        padding: 0;
        margin: 0;
    }

    .container {
        background: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 15px;
        margin-top: 50px;
        box-shadow: 0px 15px 30px rgba(0, 0, 0, 0.1);
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
        font-weight: 600;
        color: #333;
    }

    label {
        font-size: 16px;
        font-weight: 500;
    }

    .form-control {
        border-radius: 10px;
        padding: 15px;
        margin-bottom: 20px;
        font-size: 16px;
        background-color: #f9f9f9;
        color: #333;
        border: 1px solid #ddd;
    }

    .form-control:focus {
        background-color: #ffffff;
        border-color: #ff7e5f;
    }

    .btn-primary {
        background-color: #ff7e5f;
        border: none;
        border-radius: 10px;
        padding: 12px;
        font-size: 18px;
        font-weight: 600;
        width: 100%;
    }

    .btn-primary:hover {
        background-color: #feb47b;
    }

    .form-check-label {
        font-size: 14px;
        font-weight: 400;
    }

    .form-check-input {
        margin-right: 10px;
    }

    .select2-container--default .select2-selection--single {
        height: 45px;
        border-radius: 10px;
        font-size: 16px;
        background-color: #f9f9f9;
        color: #333;
    }

    .select2-container--default .select2-selection--single .select2-selection__rendered {
        padding: 10px;
    }

    .mb-3 {
        position: relative;
    }

    .form-group {
        position: relative;
    }
</style>
</head>
<body>

<%@include file="adminnavebar.jsp"%><br />

<div class="container">
    <h2>Add New Internship</h2>
    <form action="${pageContext.request.contextPath}/addInternship" method="post">
        <div class="mb-3">
            <label for="title" class="form-label">Internship Title</label>
            <input type="text" id="title" name="title" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea id="description" name="description" class="form-control" rows="4" required></textarea>
        </div>
        <div class="mb-3">
            <label for="duration" class="form-label">Duration (Weeks)</label>
            <input type="number" id="duration" name="duration" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="stipend" class="form-label">Stipend</label>
            <input type="number" id="stipend" name="stipend" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="skills" class="form-label">Skills</label><br>
            <div>
                <input type="checkbox" id="skill1" name="skills" value="HTML" class="form-check-input"> 
                <label for="skill1" class="form-check-label">HTML</label>
                
                <input type="checkbox" id="skill2" name="skills" value="CSS" class="form-check-input"> 
                <label for="skill2" class="form-check-label">CSS</label>

                <input type="checkbox" id="skill3" name="skills" value="JavaScript" class="form-check-input"> 
                <label for="skill3" class="form-check-label">JavaScript</label>

                <input type="checkbox" id="skill4" name="skills" value="Python" class="form-check-input"> 
                <label for="skill4" class="form-check-label">Python</label>

                <input type="checkbox" id="skill5" name="skills" value="Java" class="form-check-input"> 
                <label for="skill5" class="form-check-label">Java</label>

                <input type="checkbox" id="skill6" name="skills" value="Spring" class="form-check-input"> 
                <label for="skill6" class="form-check-label">Spring</label>

                <input type="checkbox" id="skill7" name="skills" value="React" class="form-check-input"> 
                <label for="skill7" class="form-check-label">React</label>
            </div>
        </div>
        <div class="mb-3">
            <label for="location" class="form-label">Location</label>
            <input type="text" id="location" name="location" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="role" class="form-label">Role</label>
            <select id="role" name="role" class="form-control" required>
                <option value="" disabled selected>Select a role</option>
                <option value="Developer">Developer</option>
                <option value="Testing">Testing</option>
                <option value="Backend">Backend</option>
                <option value="Frontend">Frontend</option>
                <option value="HR">HR</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="qualification" class="form-label">Qualification</label>
            <select id="qualification" name="qualification" class="form-control" required>
                <option value="" disabled selected>Select a Qualification</option>
                <option value="BTECH">BTECH</option>
                <option value="MTECH">MTECH</option>
                <option value="PHD">PHD</option>
                <option value="PDF">PDF</option>
                <option value="HR">HR</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="closingdate" class="form-label">Closing Date</label>
            <input type="date" id="closingdate" name="closingdate" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Add Internship</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
