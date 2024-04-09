<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>if</h3>
<c:if test="${age >= 20}">
    <p>투표 가능</p>
</c:if>

<c:if test="${age < 20}">
    <p>투표 불가능</p>
</c:if>

<h4>연습</h4>
<c:if test="${empty products}">
    <p>상품 없음 수고 ㅋㅋ</p>
</c:if>
<c:if test="${!empty products}">
    <ul>
        <li>${products[0]}</li>
        <li>${products[1]}</li>
    </ul>
</c:if>

<c:if test="${5 > 8 && 9 > 2}" var="result1">
    <p> 출력1</p>
</c:if>
<c:if test="${!result1}">
    <p>출력2</p>
</c:if>

<c:if test='${member.country == "korea" && member.age >= 20}' var="result2">
    <p>현역 입영 대상자 입니다.</p>
</c:if>
<c:if test="${!result2}">
    <p>썩 꺼져라. 외국인.</p>
</c:if>
</body>
</html>
