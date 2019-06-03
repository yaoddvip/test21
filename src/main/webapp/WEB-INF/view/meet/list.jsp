<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/31
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
    <script>
        function deleteMeetById(id){
            //1：id参数在路径中传递
            // /meet/meet/1
            var url = "/meet/meet/"+id;
            //通过jquery修改form的action属性
            $("#deleteForm").prop("action",url);

            //2：如何发送一个delete请求
            //_method=delete
            //3：发送请求
            $("#deleteForm").submit();
        }
    </script>
</head>
<body>
    <form id="deleteForm"  method="post">
        <%--在发送的请求中，添加 _method=delete 参数 --%>
        <input type="hidden" name="_method" value="delete">
    </form>
    <a href="/meet/toAddPage">增加</a>
    <table>
        <tr>
            <th>编号</th>
            <th>名称</th>
            <th>人数</th>
            <th>日期</th>
            <th>图片</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${list}" var="meet">
            <tr>
                <td>${meet.meetId}</td>
                <td>${meet.meetName}</td>
                <td>${meet.meetNumber}</td>
                <td>${meet.meetDate}</td>
                <td>${meet.meetImg}</td>
                <td>
                    <a href="javascript:deleteMeetById(${meet.meetId})">删除</a>
                    <a href="/meet/meet/${meet.meetId}">修改</a>
                </td>
            </tr>
        </c:forEach>
    </table>


</body>
</html>
