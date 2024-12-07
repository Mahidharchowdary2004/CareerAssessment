<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Career Planning</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Styles */
        body {
            background-color: #f4f4f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .container {
            margin-top: 30px;
            flex: 1;
        }
        h2 {
            color: #004080;
            font-weight: bold;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }
        .back-btn {
            margin-bottom: 20px;
        }
        .intro-section {
            text-align: center;
            margin-top: 30px;
        }
        .intro-section img {
            max-width: 100%;
            height: auto;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .intro-section p {
            font-size: 18px;
            margin-top: 20px;
            color: #333;
        }
        .career-tips {
            margin-top: 30px;
        }
        .career-tips ul {
            list-style-type: square;
            padding-left: 20px;
        }
        footer {
            background-color: #004080;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            border-top: 2px solid #003366;
        }
        footer p {
            margin: 0;
            font-size: 14px;
        }
        .social-icons {
            margin-top: 15px;
        }
        .social-icons a {
            color: #fff;
            font-size: 25px;
            margin: 0 15px;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        .social-icons a:hover {
            color: #0066cc;
        }
    </style>
</head>
<body>
    <div class="container text-center">
        <h2><i class="glyphicon glyphicon-briefcase"></i> Career Planning</h2>

        <!-- Back Button -->
        <a href="<c:url value='/home.jsp' />" class="btn btn-primary back-btn">
            <i class="glyphicon glyphicon-arrow-left"></i> Back to Home
        </a>

        <div class="intro-section">
            <img src="https://www.digitalvidya.com/blog/wp-content/uploads/2019/07/Career-Planning_11e51d7713b3dd7a9c26782ae82eb165.webp" alt="Career Planning">
            <p>Welcome to the Career Planning section! Here you can find resources, tools, and tips to help you plan your career and make informed decisions about your future.</p>
        </div>

        <div class="career-tips">
            <h3>Career Planning Tips</h3>
            <ul>
                <li>Research different career options to find the right fit for you.</li>
                <li>Set short-term and long-term career goals.</li>
                <li>Focus on continuous learning and skill development.</li>
                <li>Build a strong professional network.</li>
                <li>Stay adaptable to the changing job market and career trends.</li>
            </ul>
        </div>
    </div>

    <footer>
        <p>&copy; <%= java.time.Year.now().getValue() %> Career Management System. All Rights Reserved.</p>
        <div class="social-icons">
            <a href="https://www.facebook.com" target="_blank" rel="noopener noreferrer"><i class="fab fa-facebook-square"></i><span class="sr-only">Facebook</span></a>
            <a href="https://twitter.com" target="_blank" rel="noopener noreferrer"><i class="fab fa-twitter-square"></i><span class="sr-only">Twitter</span></a>
            <a href="https://www.linkedin.com" target="_blank" rel="noopener noreferrer"><i class="fab fa-linkedin"></i><span class="sr-only">LinkedIn</span></a>
            <a href="https://www.instagram.com" target="_blank" rel="noopener noreferrer"><i class="fab fa-instagram"></i><span class="sr-only">Instagram</span></a>
        </div>
    </footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
