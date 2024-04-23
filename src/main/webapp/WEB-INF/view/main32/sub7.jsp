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

<h3>고객 정보 조회</h3>
<form>
    번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty customer}">
    조회된 회원이 없습니다.
</c:if>
<c:if test="${not empty customer}">
    <form action="/main32/sub7/update" method="post">
        <div>
            닉네임
            <input type="text" name="name" value="${customer.name}">
        </div>
        <div>
            본명
            <input type="text" name="contactName" value="${customer.contactName}">
        </div>
        <div>
            주소
            <input type="text" name="address" value="${customer.address}">
        </div>
        <div>
            도시
            <input type="text" name="city" value="${customer.city}">
        </div>
        <div>우편번호
            <input type="text" name="postalCode" value="${customer.postalCode}">
        </div>
        <div>
            나라
            <input type="text" name="country" value="${customer.country}">
        </div>
        <div style="display: none">
            <input type="text" name="id" value="${customer.id}">
        </div>
        <div>
            <input type="submit">
        </div>
    </form>
</c:if>

</body>
</html>
