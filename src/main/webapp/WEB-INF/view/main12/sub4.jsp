<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="3" var="num">
    <p>반복 출력 코드 ${num}</p>
</c:forEach>
<hr>
<c:forEach items="${myList}" var="elem">
    <p>${elem}</p>
</c:forEach>
<hr>
<c:forEach items="${foods}" var="menu">
    <p>${menu}</p>
</c:forEach>
<c:forEach items="${foods}" var="menu" begin="1" end="2">
    <p>${menu}</p>

</c:forEach>
<c:forEach items="${myMap}" var="e">
    <p>${e.key} : ${e.value}</p>
</c:forEach>
<hr>
<c:forEach items="${cars}" var="e">
    <p>${e.key}:${e.value}</p>
</c:forEach>
<hr>
<c:forEach items="${myList2}" var="elem">
    <p>${elem}</p>
</c:forEach>
<hr>
<c:forEach items="${myMap2}" var="entry">
    <p>${entry.key}:${entry.value}</p>
</c:forEach>
</body>
</html>
