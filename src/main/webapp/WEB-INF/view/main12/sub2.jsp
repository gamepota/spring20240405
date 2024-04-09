<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>choose, when, otherwise</h3>
<c:choose>
    <c:when test="${age <= 12}">
        <p> 어린이용 컨텐츠</p>
    </c:when>
    <c:when test="${age <=18}">
        <p>청소년용 컨텐츠</p>

    </c:when>
    <c:otherwise>
        <p>성인용 컨텐츠</p>
    </c:otherwise>
</c:choose>
</body>
</html>
