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

<h3>직원 정보 조회</h3>
<form>
    번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employee}">
    조회된 직원이 없습니다.
</c:if>
<c:if test="${not empty employee}">
    <h3>${employee.id}번 직원</h3>
    <form action="/main32/sub6/update" method="post">
        <div>
            이름
            <input type="text" value="${employee.lastName}" name="lastName">
        </div>
        <div>
            성
            <input type="text" value="${employee.firstName}" name="firstName">
        </div>
        <div>
            생년월일
            <input type="date" value="${employee.birthDate}" name="birthDate">
        </div>
        <div>
            사진
            <input type="text" value="${employee.photo}" name="photo">
        </div>
        <div>
            특이사항
            <textarea name="notes" id="" cols="30" rows="10"></textarea>
        </div>
        <div style="display: none">
            <input type="text" name="id" value="${employee.id}">
        </div>
        <div>
            <input type="submit" value="갱신">
        </div>
    </form>
</c:if>

</body>
</html>
