<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${myList}" var="item" varStatus="status">
    <div style="border: 1px solid black; margin: 5px;"></div>
    <p>begin: ${status.begin}</p>
    <p>end: ${status.end}</p>
    <p>index: ${status.index}</p>
    <p>count: ${status.count}</p>
    <p>first: ${status.first}</p>
    <p>last: ${status.last}</p>
    <p>current: ${status.current}</p>
</c:forEach>

<hr>
<c:forEach items="${myList}" varStatus="status" var="item">
    ${item}<c:if test="${not status.last}">
    ,
</c:if>
</c:forEach>
<hr>
<c:forEach items="${myList1}" varStatus="status" var="item">
    ${item}
    <c:if test="${status.first}"> : </c:if>
    <c:if test="${!status.last && !status.first}">
        ,
    </c:if>
</c:forEach>
<hr>
<c:forEach items="${myList}" varStatus="status" var="item">
    ${item}
    <c:if test="${status.first}">
        기술들:
    </c:if>
    <c:if test="${not status.last}">
        ,
    </c:if>
</c:forEach>
</body>
</html>
