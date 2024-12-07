<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    /* Animation for Background */
    @keyframes gradientBG {
        0% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
        100% {
            background-position: 0% 50%;
        }
    }

    /* Animation for Fade-In Effect */
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Pulse Animation for Buttons */
    @keyframes pulse {
        0% {
            box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.7);
        }
        70% {
            box-shadow: 0 0 0 20px rgba(255, 255, 255, 0);
        }
        100% {
            box-shadow: 0 0 0 0 rgba(255, 255, 255, 0);
        }
    }

    /* General Body Styling */
    body {
        background: linear-gradient(-45deg, #ff9a9e, #fad0c4, #fad0c4, #fbc2eb);
        background-size: 400% 400%;
        animation: gradientBG 10s ease infinite;
        font-family: 'Poppins', Arial, sans-serif;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0;
    }

    /* Container Styling */
    .container {
        background-color: rgba(255, 255, 355, 0.95);
        padding: 30px;
        border-radius: 20px;
        width: 100%;
        max-width: 400px;
        box-shadow: 0 15px 30px rgba(88, 88, 055, 0.2);
        animation: fadeIn 1s ease-out;
    }

    /* Header Styling */
    h3 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
        font-weight: bold;
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    /* Form Input Styling */
    .form-control {
        border-radius: 8px;
        padding: 12px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        transition: all 0.3s ease;
        font-size: 1rem;
    }

    .form-control:focus {
        border-color: #23a6d5;
        box-shadow: 0 0 5px rgba(35, 166, 213, 0.5);
    }

    /* Button Styling */
    .btn {
        width: 100%;
        padding: 12px;
        font-size: 1rem;
        text-transform: uppercase;
        font-weight: bold;
        border-radius: 8px;
        transition: all 0.3s ease;
    }

    .btn-success {
        background: linear-gradient(90deg, #6a1b9a, #8e24aa);
        border: none;
        color: white;
    }

    .btn-success:hover {
        background: linear-gradient(90deg, #8e24aa, #6a1b9a);
        transform: translateY(-3px);
        box-shadow: 0 7px 14px rgba(0, 0, 0, 0.1);
    }

    .btn-warning {
        background: linear-gradient(90deg, #d32f2f, #f44336);
        border: none;
        color: white;
    }

    .btn-warning:hover {
        background: linear-gradient(90deg, #f44336, #d32f2f);
        transform: translateY(-3px);
        box-shadow: 0 7px 14px rgba(0, 0, 0, 0.1);
    }

    /* Form Label Styling */
    .form-label {
        font-weight: 600;
        color: #333;
        margin-bottom: 8px;
    }

    /* Responsive Design */
    @media (max-width: 576px) {
        .container {
            padding: 20px;
        }

        .btn {
            font-size: 0.9rem;
        }
    }
</style>

</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <div class="container">
        <h3>Admin Login</h3>
        <form method="post" action="cheakadminlogin">
            <div class="mb-3">
                <label for="name" class="form-label">Enter Username:</label>
                <input type="text" id="name" name="cname" required class="form-control" placeholder="Enter your username" />
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required />
            </div>
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-success">Login</button>
                <button type="reset" class="btn btn-warning">Reset</button>
            </div>
        </form>
    </div>
</body>
</html>

