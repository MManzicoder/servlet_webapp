<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Students Managment</title>
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" type="text/css"> </link>
    <script language="JavaScript" type="text/JavaScript" src="../js/success.js"></script>
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
    <c:if test="${student != null}">
    <form action="update" method="post">
        </c:if>
        <c:if test="${student == null}">
        <form action="insert" method="post" onsubmit="success();">
            </c:if>
            <table border="1" cellpadding="5">
                <caption>
                    <h2>
                        <c:if test="${student != null}">
                            Edit Student
                        </c:if>
                        <c:if test="${student == null}">
                            Add Student
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${student != null}">
                    <input type="hidden" name="id" value="<c:out value='${student.id}' />" />
                </c:if>
                <tr>
                    <th>First Name: </th>
                    <td>
                        <input type="text" name="firstName" size="45"
                               value="<c:out value='${student.firstName}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Last Name: </th>
                    <td>
                        <input type="text" name="lastName" size="45"
                               value="<c:out value='${student.lastName}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>gender: </th>
                    <td>
                        <input type="text" name="gender" size="5"
                               value="<c:out value='${student.gender}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save" />
                        <c:if test="${student == null}"> <input type="reset" value="clear" /> </c:if>
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>