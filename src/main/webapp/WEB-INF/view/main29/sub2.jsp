<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:if test="${not empty message}">
    <div style="background-color: pink; padding: 20px;">
            ${message}
    </div>
</c:if>
<h3>직원 조회</h3>
<form>
    직원 번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty emloyee}">
    조회된 직원이 없습니다.
</c:if>
<c:if test="${not empty employee}">
    <div>
        번호
        <input type="number" readonly value="${employee.id}">
    </div>
    <div>이름
        <input type="text" readonly value="${employee.lastName}">
    </div>
    <div>성
        <input type="text" readonly value="${employee.firstName}">
    </div>
    <div>생년월일
        <input type="text" readonly value="${employee.birthDate}">
    </div>
    <div>사진
        <input type="text" readonly value="${employee.photo}">
    </div>
    <div> 특이사항
        <textarea name="" readonly id="" cols="30" rows="10">${employee.notes}</textarea>
    </div>


    <hr>

    <form action="/main29/sub2/delete" method="post" onsubmit="return confirm('진짜 해고 하시겠습니까?')">
        <div style="display: none">
            <input type="text" name="id" readonly value="${employee.id}">
        </div>
        <div>
            <button style="background-color: lightcoral">해고</button>
        </div>
    </form>
</c:if>


</body>
</html>
