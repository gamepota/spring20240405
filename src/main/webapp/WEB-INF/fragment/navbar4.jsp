<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    .active {
        background-color: lightblue;
    }

    a {
        border: 1px solid black;
    }
</style>
<div>
    <div>
        <a href="${param.current eq 'sub6' ? 'active':'' }" href="/main17/sub6">sub6</a>
        <a href="${param.current eq 'sub7' ? 'active':'' }" href="/main17/sub7">sub7</a>
        <a href="${param.current eq 'sub8' ? 'active':''}" href="/main17/sub8">sub8</a>
    </div>
    <div>
        <c:if test="${not empty sessionScope.userName}" var="loggedIn">
            ${sessionScope.userName}님
            <a href="/main17/sub10">loggedout</a>
        </c:if>
        <c:if test="${not loggedIn}">
            guest님
        </c:if>
        
    </div>
</div>