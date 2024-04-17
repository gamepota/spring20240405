<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<h3>사원조회</h3>
<form>
    <input value="${prevSearch}" type="text" name="search" placeholder="조회할 사원 입력">
    <%--    form 내의 button 요소는 submit 버튼 역할함 --%>
    <button>조회</button>
</form>
<hr>

<c:if test="${empty employeesList}" var="emptyEmployeesList">
    <p>조회된 사원이 없습니다.</p>
</c:if>

<c:if test="${not emptyEmployeesList}">

    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>supplier id</th>
            <th>category id</th>
            <th>unit</th>
            <th>price</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${employeesList}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.LastName}</td>
                <td>${employee.FirstName}</td>
                <td>${employee.BirthDate}</td>
                <td>${employee.Photo}</td>
                <td>${employee.Note}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>

</body>
</html>
