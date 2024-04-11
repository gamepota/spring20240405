<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, th, tr, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }

        th,
        td {
            text-align: center;

            padding: 5px;
        }
    </style>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <td>No.</td>
        <td>닉네임</td>
        <td>직업</td>
        <td>종족</td>
        <td>업적</td>
        <td>레벨</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${playerList}" var="player" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${player.nickName}</td>
            <td>${player.classes}</td>
            <td>${player.acient}</td>

            <td>
                <c:forEach items="${player.title}" var="title" varStatus="stat">
                    ${title}
                    <c:if test="${not stat.last}">
                        ,
                    </c:if>
                </c:forEach>
            </td>
            <td>${player.level}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
