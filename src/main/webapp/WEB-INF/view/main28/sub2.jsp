<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .fade_out {
        animation: fadeOut 4s forwards; /* 1초 동안 애니메이션을 적용하고, 애니메이션 종료 후 상태를 유지합니다. */
    }

    /* fadeOut 애니메이션 정의 */
    @keyframes fadeOut {
        from {
            opacity: 1; /* 시작 시 완전히 불투명합니다. */
        }
        to {
            opacity: 0; /* 종료 시 완전히 투명해져 사라집니다. */
        }
    }
</style>
<body>
<div>
    <c:if test="${not empty message}">
        <div class="fade_out" style="padding: 20px; background-color: skyblue" ;>
                ${message}
        </div>
    </c:if>
</div>
<h3>노동자 정보 입력</h3>
<form action="" method="post">
    <div>이름
        <input type="text" name="lastName">
    </div>
    <div>성
        <input type="text" name="fristName">
    </div>
    <div>생년월일
        <input type="date" name="birthDate">
    </div>
    <div>사진
        <%--        <input type="file" name="photo">--%>
        <input type="text" name="photo">
    </div>
    <div>특이사항
        <input type="text" name="note">
    </div>
    <div>
        <input type="submit" value="등록">
    </div>
</form>
</body>
</html>
