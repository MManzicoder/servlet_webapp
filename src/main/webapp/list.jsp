<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>



<html>
<head>
    <title>Students Managment</title>
    <link href="${pageContext.request.contextPath}/css/app.css" rel="stylesheet" type="text/css">
    <style>
        .app-title{

        }
        .links a{
            text-decoration: none;
            padding: 10px 15px;
            color: #fff;
            border-radius: 5px;
            background-color: dodgerblue;
        }
    </style>
</head>

<body>
<center>

    <h1 class="app-title">Students Management</h1>
    <h2 class="links">
        <a href="/rdev/new">New Student</a>
        &nbsp;&nbsp;&nbsp;
        <a href="/rdev/list">List All</a>
    </h2>
</center>
<div align="center" class="container">
    <table border="1" cellpadding="5">
        <caption><h2>List of Students</h2></caption>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Gender</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="student" items="${listStudent}">
            <tr>
                <td>${student.firstName}</td>
                <td><c:out value="${student.lastName}" /></td>
                <td><c:out value="${student.gender}" /></td>
                <td>
                    <a href="/rdev/edit?id=<c:out value='${student.id}' />">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/rdev/delete?id=<c:out value='${student.id}' />">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>