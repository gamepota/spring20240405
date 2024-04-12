<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    .menu_item {
        border: 1px solid black;

    }

    .active {
        background-color: purple;
        color: blue;
        font-style: italic;
        font-weight: bold;
    }
</style>
<div>
    <a class="${current eq 'sub5' ? 'active' : ''}" href="/main15/sub5">
        <span class="menu_item ">sub5</span>
    </a>
    <a class="${current eq 'sub6' ? 'active' : ''}" href="/main15/sub6">
        <span class="menu_item">sub6</span>
    </a>
</div>