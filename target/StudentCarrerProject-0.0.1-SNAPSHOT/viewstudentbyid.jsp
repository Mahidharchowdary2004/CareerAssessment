<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
.container
{
text-align: center
}
</style>
</head>
<body>
<%@include file = "adminnavbar.jsp" %>
<h3 align="center"><u>view Student by Id</u></h3><br/>

<div class = "container">

<form method = "post"action = "displaystudent">

	<label for="name">Select Student ID:</label>
    <select  class="form-select" name= "id" required>
    <option value="">---select---</option>
    <c:forEach items="${studentlist}" var="student">
    <option value="${student.id}">${student.id}--${student.name}</option>
    
    </c:forEach>

    </select>
    <br/><br/>

  	 
   
    <button type="submit" class="btn btn-success">view</button>
</form>

</div>
</body>
</html>