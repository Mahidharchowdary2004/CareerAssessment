<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Questions - Career Management System</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    <style>
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes slideIn {
            from { transform: translateX(-20px); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            margin: 0;
            padding: 20px;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 100%;
            max-width: 800px;
            margin-top: 20px;
            animation: slideIn 0.8s ease-out;
        }

        h1, h2 {
            color: #2c3e50;
            text-align: center;
            animation: fadeIn 0.8s ease-out;
        }

        form {
            display: grid;
            gap: 20px;
        }

        label {
            font-weight: 600;
            color: #34495e;
            display: block;
            margin-bottom: 8px;
            transition: color 0.3s ease;
        }

        input, textarea, select {
            width: 100%;
            padding: 12px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        input:focus, textarea:focus, select:focus {
            border-color: #3498db;
            box-shadow: 0 0 0 2px rgba(52, 152, 219, 0.2);
            outline: none;
        }

        textarea {
            height: 120px;
            resize: vertical;
        }

        button {
            width: 100%;
            padding: 15px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11), 0 1px 3px rgba(0, 0, 0, 0.08);
        }

        button:hover {
            background-color: #2980b9;
            transform: translateY(-2px);
            box-shadow: 0 7px 14px rgba(50, 50, 93, 0.1), 0 3px 6px rgba(0, 0, 0, 0.08);
        }

        button:active {
            transform: translateY(1px);
        }

        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .char-counter {
            font-size: 0.8em;
            color: #6c757d;
            text-align: right;
        }

        .is-invalid {
            border-color: #dc3545;
        }

        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .form-row {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1><i class="fas fa-question-circle"></i> Manage Questions</h1>

        <h2><i class="fas fa-plus-circle"></i> Add Question</h2>
        <form action="add" method="post" id="questionForm">
            <div>
                <label for="questionTitle">Question Title:</label>
                <textarea id="questionTitle" name="questionTitle" required maxlength="500"></textarea>
                <div class="char-counter" id="titleCounter">0 / 500 characters</div>
            </div>

            <div class="form-row">
                <div>
                    <label for="option1">Option A:</label>
                    <input id="option1" type="text" name="option1" required>
                </div>
                <div>
                    <label for="option2">Option B:</label>
                    <input id="option2" type="text" name="option2" required>
                </div>
            </div>

            <div class="form-row">
                <div>
                    <label for="option3">Option C:</label>
                    <input id="option3" type="text" name="option3" required>
                </div>
                <div>
                    <label for="option4">Option D:</label>
                    <input id="option4" type="text" name="option4" required>
                </div>
            </div>

            <div>
                <label for="rightAnswer">Right Answer:</label>
                <input id="rightAnswer" type="text" name="rightAnswer" required placeholder="Enter the correct answer">
            </div>

            <div class="form-row">
                <div>
                    <label for="difficultlevel">Difficulty Level:</label>
                    <select id="difficultlevel" name="difficultlevel" required>
                        <option value="">Select difficulty</option>
                        <option value="Easy">Easy</option>
                        <option value="Medium">Medium</option>
                        <option value="Hard">Hard</option>
                    </select>
                </div>
                <div>
                    <label for="category">Category:</label>
                    <input id="category" type="text" name="category" required>
                </div>
            </div>

            <button type="submit"><i class="fas fa-save"></i> Add Question</button>
        </form>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const questionTitle = document.getElementById('questionTitle');
            const titleCounter = document.getElementById('titleCounter');
            const form = document.getElementById('questionForm');

            questionTitle.addEventListener('input', function() {
                const charCount = this.value.length;
                titleCounter.textContent = charCount + ' / 500 characters';
            });

            form.addEventListener('submit', function(event) {
                let isValid = true;
                const requiredFields = form.querySelectorAll('[required]');

                requiredFields.forEach(function(field) {
                    if (!field.value.trim()) {
                        isValid = false;
                        field.classList.add('is-invalid');
                    } else {
                        field.classList.remove('is-invalid');
                    }
                });

                if (!isValid) {
                    event.preventDefault();
                    alert('Please fill in all required fields.');
                }
            });
        });
    </script>
</body>
</html>