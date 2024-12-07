<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard</title>
    <style>
        /* CSS Variables for Easy Theming */
        :root {
            --primary-color: #007bff;
            --secondary-color: #0056b3;
            --background-color: #f4f4f4;
            --white: #ffffff;
            --text-color: #333;
            --transition-speed: 0.3s;
            --border-radius: 8px;
        }

        /* CSS Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', 'Helvetica Neue', sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
            line-height: 1.6;
        }

        /* Navbar Section */
        nav {
            background-color: var(--primary-color);
            color: var(--white);
            padding: 15px 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 15px;
        }

        nav ul li a {
            color: var(--white);
            text-decoration: none;
            font-weight: 600;
            padding: 10px 15px;
            border-radius: var(--border-radius);
            transition: 
                background-color var(--transition-speed) ease,
                transform var(--transition-speed) ease;
        }

        nav ul li a:hover {
            background-color: var(--secondary-color);
            transform: scale(1.05);
        }

        /* Container Styles */
        .container {
            width: 90%;
            max-width: 1000px;
            margin: 30px auto;
            background: var(--white);
            border-radius: var(--border-radius);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
        }

        .container h1 {
            color: var(--primary-color);
            margin-bottom: 20px;
            font-size: 2.5rem;
        }

        .container p {
            max-width: 700px;
            margin: 0 auto 30px;
            font-size: 1.1rem;
            color: #666;
        }

        /* Action Buttons */
        .actions {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
        }

        .btn {
            display: inline-block;
            padding: 12px 25px;
            font-size: 1rem;
            color: var(--white);
            background-color: var(--primary-color);
            border: none;
            border-radius: var(--border-radius);
            text-decoration: none;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: 
                background-color var(--transition-speed) ease,
                transform var(--transition-speed) ease,
                box-shadow var(--transition-speed) ease;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }

        .btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-3px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        /* Footer Styles */
        footer {
            text-align: center;
            padding: 15px 0;
            background-color: var(--primary-color);
            color: var(--white);
            position: fixed;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -2px 5px rgba(0,0,0,0.1);
        }

        /* Responsive Adjustments */
        @media screen and (max-width: 768px) {
            nav ul {
                flex-direction: column;
                align-items: center;
            }

            .actions {
                flex-direction: column;
                align-items: center;
            }

            .btn {
                width: 100%;
                max-width: 300px;
            }
        }

        /* Accessibility Enhancements */
        a:focus, .btn:focus {
            outline: 3px solid var(--secondary-color);
            outline-offset: 2px;
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>

    <!-- Main Content -->
    <div class="container">
        <h1>Welcome to the Admin Dashboard</h1>
        <p>This is your central hub for managing the system. Use the navigation bar above to explore various features, such as managing students, viewing questions, and more.</p>

        <div class="actions">
            <a href="viewallstudent" class="btn">View All Students</a>
            <a href="addQuestion.jsp" class="btn">Add a New Question</a>
            <a href="adminlogin" class="btn">Logout</a>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Admin Dashboard | All Rights Reserved</p>
    </footer>
</body>
</html>