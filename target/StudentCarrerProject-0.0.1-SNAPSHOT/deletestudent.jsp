<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<%@include file = "adminnavbar.jsp" %>

<h1 align= "center">Delete Student</h1>
<table align = "center" border = 2 class = "table table-striped">
<tr class = "thead-dark">
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>LOCATION</th>
<th>CONTACT NO</th>
<th>EMAIL</th>
<th>ACTION</th>
</tr>

<c:forEach items="${studentlist}" var="Student">
    <tr>
        <td><c:out value="${student.id}"/></td>
        <td><c:out value="${Student.name}"/></td>
        <td><c:out value="${Student.gender}"/></td>
        <td><c:out value="${Student.dataofbirth}"/></td>
        <td><c:out value="${Student.location}"/></td>
        <td><c:out value="${Student.contact}"/></td>
         <td><c:out value="${Student.email}"/></td>
         
         <td>
         <a href='<c:url value= 'delete?id=${Student.id }'></c:url>'>Delete</a>
         </td>
    </tr>
</c:forEach>

</table>
</body>
</html>