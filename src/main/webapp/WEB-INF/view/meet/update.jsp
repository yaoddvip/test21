<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/1
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/meet/meet" method="post">
        <input type="hidden" value="${meet.meetId}" name="meetId"><br>
        <input type="hidden" value="put" name="_method"><br>
        name:<input type="text" name="meetName" value="${meet.meetName}"><br>
        number:<input type="text" name="meetNumber" value="${meet.meetNumber}"><br>
        date:<input type="text" name="meetDate"><br>
        <input type="submit" value="修改">
    </form>
</body>
</html>
