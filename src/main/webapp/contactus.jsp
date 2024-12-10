<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* CSS Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4eade;
            color: #333;
            line-height: 1.6;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        /* Contact Card Styles */
        .contact-card {
            background-color: #84bfcf;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.08);
            padding: 2rem;
            width: 100%;
            max-width: 400px;
            text-align: center;
            transition: transform 0.3s ease;
        }

        .contact-card:hover {
            transform: translateY(-50px);
        }

        .contact-card h1 {
            color: #ffb6b9;
            font-size: 1.8rem;
            margin-bottom: 1rem;
        }

        .contact-card p {
            color: #C559B9;
            font-size: 1rem;
            margin-bottom: 1.5rem;
        }

        .contact-info {
            text-align: left;
        }

        .contact-item {
            display: flex;
            align-items: center;
            margin-bottom: 1rem;
            padding: 0.5rem;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .contact-item:hover {
            background-color: #ffb6b9;
        }

        .contact-item i {
            color: #3498db;
            font-size: 1.2rem;
            margin-right: 1rem;
            width: 20px;
            text-align: center;
        }

        .contact-item span {
            color: #34495e;
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .contact-card {
                padding: 1.5rem;
            }

            .contact-card h1 {
                font-size: 1.5rem;
            }

            .contact-card p {
                font-size: 0.9rem;
            }

            .contact-item {
                font-size: 0.8rem;
            }
        }
    </style>
</head>
<body>
    <div class="contact-card">
        <h1>Contact Us</h1>
        <p>We'd love to hear from you! Reach out to us using the details below:</p>

        <div class="contact-info">
            <div class="contact-item">
                <i class="fas fa-envelope"></i>
                <span><strong>Email:</strong> nallapanenimahidhar2004@gmail.com</span>
            </div>
            <div class="contact-item">
                <i class="fas fa-map-marker-alt"></i>
                <span><strong>Address:</strong> KL University</span>
            </div>
        </div>
    </div>
</body>
</html>