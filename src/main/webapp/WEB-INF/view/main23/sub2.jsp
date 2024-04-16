<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 이름</h3>
<ul>
    <c:forEach items="${customerNameList}" var="cName">
        <li>${cName}</li>
    </c:forEach>
</ul>

</body>
</html>
