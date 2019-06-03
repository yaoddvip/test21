<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/1
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/meet/meet" method="post">
        name:<input type="text" name="meetName"><br>
        number:<input type="text" name="meetNumber"><br>
        date:<input type="text" name="meetDate"><br>
        <input type="submit" value="增加">
    </form>
</body>
</html>
