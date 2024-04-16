<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${param.type eq 'fail'}">
    <div style="padding: 20px; background-color: azure">
        <h1>로그인 실패</h1>
        <h2>아이디와 비밀번호를 확인</h2>
    </div>
</c:if>
<form action="/main22/sub7" method="post">
    <div>
        <input type="text" name="id">
    </div>
    <div>
        <input type="text" name="password">
    </div>
    <div>
        <input type="submit" value="로그인">
    </div>
</form>
</body>
</html>
