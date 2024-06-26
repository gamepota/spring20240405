<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>상품명으로 상품 조회</h3>
<form action="/main25/sub2">
    <input type="text" name="name" placeholder="상품명 조회">
    <input type="submit" value="조회">
</form>
<hr>
<div>
    <c:forEach items="${products}" var="product">
        <h4>${product.id}번 상품 | 판매번호: ${product.supplierID} | 상품번호: ${product.categoryID}</h4>
        <p>상품명 :
            <input type="text" value="${product.productName}" readonly>
        </p>
        <p>
            단위 :
            <input type="text" value="${product.unit}" readonly>
        </p>
        <p>
            가격 :
            <input type="text" value="${product.price}" readonly>
            달러
        </p>


    </c:forEach>
</div>

</body>
</html>
