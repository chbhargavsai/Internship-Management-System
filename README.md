# Internship Management system


🌐 SDP – Internship Management System (Spring Boot)
📋 Overview

SDP (Software Development Project) is a full-stack web application built with Spring Boot, JSP, and MySQL, designed to streamline internship management for both administrators and students.

Admins can post internships, manage applicants, and track submissions, while students can register, browse opportunities, and apply online.

🚀 Features
👨‍💼 Admin Module

Secure admin login

Add, edit, or delete internship postings

View and manage registered students

Review internship applications and submissions

🎓 Student Module

Student registration and login

Explore available internships

Apply for internships directly

Upload work submissions

🧠 General

MVC architecture (Model-View-Controller)

Integrated with Spring Data JPA for database operations

Clean layered design: Controller → Service → Repository

JSP-based dynamic frontend with Bootstrap styling

🛠️ Tech Stack
Layer	Technology
Frontend	HTML5, CSS3, JSP, Bootstrap
Backend	Java 17+, Spring Boot
Database	MySQL
ORM	Spring Data JPA (Hibernate)
Server	Apache Tomcat (embedded)
IDE	Eclipse / IntelliJ IDEA
Build Tool	Maven
📁 Project Structure
SDP/
 ├── src/
 │   ├── main/
 │   │   ├── java/com/klef/jfsd/springboot/
 │   │   │   ├── controller/      # Controllers (Admin, Customer, Internship)
 │   │   │   ├── model/           # Entity classes (Admin, Internship, Customer, etc.)
 │   │   │   ├── repository/      # Spring Data JPA repositories
 │   │   │   ├── service/         # Business logic layer
 │   │   │   └── SdpApplication.java
 │   │   ├── resources/
 │   │   │   ├── application.properties
 │   │   │   ├── static/          # Static assets (CSS/JS/images)
 │   │   │   └── templates/       # JSP templates if used with Thymeleaf
 │   │   └── webapp/
 │   │       └── *.jsp            # JSP frontend pages
 │   └── test/java/...            # Unit tests
 ├── pom.xml                      # Maven dependencies
 └── README.md

⚙️ Setup Instructions
1. Clone the repository
git clone https://github.com/yourusername/SDP.git
cd SDP

2. Configure MySQL

Create a database named sdp_db (or update in application.properties):

spring.datasource.url=jdbc:mysql://localhost:3306/sdp_db
spring.datasource.username=root
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

3. Run the application

Using Maven:

mvn spring-boot:run


Or from IDE (run SdpApplication.java)

4. Access the app

Visit → http://localhost:8080

📸 UI Pages (JSP)
Page	Description
adminlogin.jsp	Admin authentication page
adminhome.jsp	Dashboard for managing internships
addInternship.jsp	Form to add new internships
customerlogin.jsp	Student login
customerhome.jsp	Student dashboard
viewInternships.jsp	List of available internships

🧩 Future Enhancements

Add email notifications for internship updates

Implement role-based authentication (Spring Security)

Integrate REST APIs for mobile use

Add analytics dashboard for admin



