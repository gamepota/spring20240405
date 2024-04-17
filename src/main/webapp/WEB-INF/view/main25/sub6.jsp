<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<h3> 물품 목록</h3>

<form action="">
    <input value="${prevSearch}" type="text" placeholder="물품 검색" name="search">
    <input type="submit" value="검색">
</form>
<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>상품명</th>
        <th>등록번호</th>
        <th>카테고리번호</th>
        <th>판매 갯수</th>
        <th>가격</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${productList.id}</td>
            <td>${productList.name}</td>
            <td>${productList.supplierID}</td>
            <td>${productList.categoryID}</td>
            <td>${productList.unit}</td>
            <td>${productList.price}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
