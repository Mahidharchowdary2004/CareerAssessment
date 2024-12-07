<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Questions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        form {
            margin-bottom: 20px;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 5px;
        }
        label {
            font-weight: bold;
        }
        input, textarea, button {
            margin-bottom: 10px;
            width: 100%;
            padding: 8px;
        }
        button {
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Manage Questions</h1>

    <!-- Add Question -->
    <h2>Add Question</h2>
    <form action="add" method="post">
        <label for="questionTitle">Question Title:</label>
        <textarea id="questionTitle" name="questionTitle" required></textarea>

        <label for="option1">Option A:</label>
        <input id="option1" type="text" name="option1" required>

        <label for="option2">Option B:</label>
        <input id="option2" type="text" name="option2" required>

        <label for="option3">Option C:</label>
        <input id="option3" type="text" name="option3" required>

        <label for="option4">Option D:</label>
        <input id="option4" type="text" name="option4" required>

        <label for="rightAnswer">Right Answer:</label>
        <input id="rightAnswer" type="text" name="rightAnswer" required>

        <label for="difficultlevel">Difficulty Level:</label>
        <input id="difficultlevel" type="text" name="difficultlevel" required>

        <label for="category">Category:</label>
        <input id="category" type="text" name="category" required>

        <button type="submit">Add Question</button>
    </form>

</body>
</html>
