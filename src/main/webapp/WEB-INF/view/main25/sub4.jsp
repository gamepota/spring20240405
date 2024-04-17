<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 이름으로 정보 조회</h3>
<form action="/main25/sub4">
    고객명 :
    <input type="text" name="name" placeholder="고객명을 입력해주세요">
    <input type="submit" value="조회">
</form>
<hr>
<div>
    <c:forEach items="${customers}" var="customer">
        <h4>${customer.name} 님 정보</h4>
        <p> 풀네임:
            <input type="text" value="${customer.fullname}" readonly>
        </p>
        <p> id:
            <input type="text" value="${customer.id}" readonly>
        </p>
        <p> 주소:
            <input type="text" value="${customer.Address}" readonly>
            <input type="text" value="${customer.city}" readonly>
            <input type="text" value="${customer.post}" readonly>
            <input type="text" value="${customer.country}">
        </p>

    </c:forEach>
</div>

</body>
</html>
