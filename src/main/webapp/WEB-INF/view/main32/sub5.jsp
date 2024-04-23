<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:if test="${not empty message}">
    <div style="padding: 20px; background-color: palegreen">${message}</div>
</c:if>

<h3>직원 정보 입력</h3>
<form method="post">
    <div>
        이름
        <input type="text" name="lastName">
    </div>
    <div>
        성
        <input type="text" name="firstName">
    </div>
    <div>
        생년월일
        <input type="date" name="birthDate">
    </div>
    <div>
        사진
        <input type="text" name="photo">
    </div>
    <div>
        특이사항
        <textarea name="" id="notes" cols="30" rows="10"></textarea>
    </div>
    <hr>
    <div>
        <input type="submit" value="입력">
    </div>
</form>
</body>
</html>
