<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/3
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script >
        //页面加载函数
        $(function(){
            $.ajax({
                url:"/meet2/meets",
                type:"get",
                datatype:"json",
                success:function(data){
                    console.log(data);
                    if(data.status = 200){
                        var meets = data.data;

                        var str = "";

                        str += "<table>";
                        str += "    <tr>";
                        str += "        <th>编号</th>";
                        str += "        <th>名称</th>";
                        str += "        <th>人数</th>";
                        str += "        <th>日期</th>";
                        str += "        <th>图片</th>";
                        str += "        <th>操作</th>";
                        str += "    </tr>";
                        $(meets).each(function(i){

                                str += "<tr>";
                                str += "    <td>"+this.meetId+"</td>";
                                str += "    <td>"+this.meetName+"</td>";
                                str += "    <td>"+this.meetNumber+"</td>";
                                str += "    <td>"+this.meetDate+"</td>";
                                str += "    <td>"+this.meetImg+"</td>";
                                str += "    <td>";
                                str += "    <a href='javascript:deleteMeetById("+$(this).meetId+")'>删除</a>";
                                str += "        <a href='/meet/meet/"+$(this).meetId+"'>修改</a>";
                                str += "    </td>";
                                str += "</tr>";
                        })

                        str += "</table>";
                        console.log(str);

                        $("#meetsDiv").html(str)
                        //.html()方法，给元素添加内容
                        // .val()


                    }
                }
            })
        })
    </script>


</head>
<body>
    list page
    <a href="/meet/toAddPage2">增加</a>
    <div id="meetsDiv"></div>

    <%--<table>
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
    </table>--%>

</body>
</html>
