<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${param.type eq 'fail'}">
    <div style="padding: 20px; background-color: red">
        아이디와 패스워드를 확인 해주세요.
    </div>
</c:if>
<form action="/main22/sub4" method="post">
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
