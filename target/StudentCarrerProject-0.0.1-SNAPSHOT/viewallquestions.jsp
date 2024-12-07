<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Questions</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            padding: 10px;
            border: 1px solid black;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .action-buttons button {
            padding: 5px 10px;
            cursor: pointer;
        }
    </style>
    <script>
        function deleteQuestion(id) {
            if (confirm("Are you sure you want to delete this question?")) {
                // Send AJAX DELETE request
                fetch("/delete/" + id, {
                    method: 'DELETE'
                })
                .then(response => {
                    if (response.ok) {
                        alert("Question deleted successfully");
                        location.reload();  // Reload the page to reflect the change
                    } else {
                        alert("Error deleting question");
                    }
                });
            }
        }
    </script>
</head>
<body>
<h1 align="center">View All Questions</h1>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Question Title</th>
            <th>Option A</th>
            <th>Option B</th>
            <th>Option C</th>
            <th>Option D</th>
            <th>Right Answer</th>
            <th>Difficulty Level</th>
            <th>Category</th>
            <th>Actions</th> <!-- Added Actions column -->
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${questionList}" var="question">
            <tr>
                <td><c:out value="${question.id}" /></td>
                <td><c:out value="${question.questionTitle}" /></td>
                <td><c:out value="${question.option1}" /></td>
                <td><c:out value="${question.option2}" /></td>
                <td><c:out value="${question.option3}" /></td>
                <td><c:out value="${question.option4}" /></td>
                <td><c:out value="${question.rightAnswer}" /></td>
                <td><c:out value="${question.difficultlevel}" /></td>
                <td><c:out value="${question.category}" /></td>
                <td>
                    <div class="action-buttons">
                        
                       <!-- Update Button -->
						<a href="/updateQuestion.jsp">
					    <button type="button">Update</button>
						</a>


                        <button onclick="deleteQuestion(${question.id})">Delete</button>

                        <!-- Alternatively, you could use a form for the delete action -->
                        <!--
                        <form action="/delete/${question.id}" method="POST" style="display:inline;">
                            <input type="hidden" name="_method" value="DELETE"/>
                            <button type="submit">Delete</button>
                        </form>
                        -->
                    </div>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
