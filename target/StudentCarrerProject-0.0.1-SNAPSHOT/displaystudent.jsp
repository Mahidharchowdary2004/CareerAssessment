<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display customer</title>
</head>
<body>
<%@include file = "adminnavbar.jsp" %><br/><br/>

<h3 align="center">Display Student</h3>
ID:<c:out value="${c.id}"></c:out><br/>
NAME:<c:out value="${c.name}"></c:out><br/>
GENDER:<c:out value="${c.gender}"></c:out><br/>
DOB:<c:out value="${c.dataofbirth}"></c:out><br/>
EMAIL:<c:out value="${c.location}"></c:out><br/>
LOCATION:<c:out value="${c.contact}"></c:out><br/>
CONTACT:<c:out value="${c.email}"></c:out><br/>

</body>
</html>