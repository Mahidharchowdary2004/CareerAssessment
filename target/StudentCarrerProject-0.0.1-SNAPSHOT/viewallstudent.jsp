<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        .dashboard-header {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
            padding: 2rem 0;
            margin-bottom: 2rem;
        }
        .dashboard-title {
            font-size: 2.5rem;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }
        .table-container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            padding: 2rem;
        }
        .table thead th {
            background-color: #007bff;
            color: white;
            border-color: #0056b3;
        }
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0,123,255,0.05);
        }
        .table-hover tbody tr:hover {
            background-color: rgba(0,123,255,0.1);
        }
    </style>
</head>
<body>
    <jsp:include page="adminnavbar.jsp" />
    
    <header class="dashboard-header">
        <div class="container">
            <h1 class="dashboard-title text-center">
                <i class="fas fa-user-graduate mr-2"></i>Student Management Dashboard
            </h1>
        </div>
    </header>

    <div class="container table-container">
        <div class="row mb-4">
            <div class="col">
                <h2><i class="fas fa-list mr-2"></i>All Students</h2>
            </div>
            <div class="col text-right">
                <button class="btn btn-primary" onclick="window.print()">
                    <i class="fas fa-print mr-2"></i>Print Report
                </button>
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th><i class="fas fa-id-badge mr-2"></i>ID</th>
                        <th><i class="fas fa-user mr-2"></i>Name</th>
                        <th><i class="fas fa-venus-mars mr-2"></i>Gender</th>
                        <th><i class="fas fa-birthday-cake mr-2"></i>Date of Birth</th>
                        <th><i class="fas fa-map-marker-alt mr-2"></i>Location</th>
                        <th><i class="fas fa-phone mr-2"></i>Contact No</th>
                        <th><i class="fas fa-envelope mr-2"></i>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${studentList}" var="student">
                        <tr>
                            <td><c:out value="${student.id}"/></td>
                            <td><c:out value="${student.name}"/></td>
                            <td><c:out value="${student.gender}"/></td>
                            <td><c:out value="${student.dataofbirth}"/></td>
                            <td><c:out value="${student.location}"/></td>
                            <td><c:out value="${student.contact}"/></td>
                            <td><c:out value="${student.email}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>