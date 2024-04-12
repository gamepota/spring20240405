<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- el의 내장 객체 param: request parameter를
key, value 쌍으로 저장한 Map--%>
<div> name: ${param.name}</div>
<div> age: ${param.age}</div>
<div> city: ${param.city}</div>
<div> address: ${param.address}</div>
<div> model: ${param.model}</div>

<hr>
<div>${param.title}</div>
<div>${param.content}</div>
<div>${param.car}</div>

<hr>
<div>q: ${param.q}</div>
<div>song: ${param.song}</div>
<div>company: ${param.company}</div>
</body>
</html>

<%--name=김가루&age=34&city=seoul&address=집&model=rr&title=제목&content=내용&car=부르릉--%>