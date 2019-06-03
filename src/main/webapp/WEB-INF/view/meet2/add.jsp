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
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script>
        $(function(){
            $("#addBun").click(function(){
                $.post("/meet2/meet",$("#addForm").serialize(),function(data){
                    if(data.status == 200){
                        alert("增加成功");
                        location.href = "/meet/list";
                    }else{
                        alert("增加失败");
                    }
                },"json");

            })
        })

    </script>
</head>
<body>
    <form id="addForm">
        name:<input type="text" name="meetName"><br>
        number:<input type="text" name="meetNumber"><br>
        date:<input type="text" name="meetDate"><br>
        img:<input type="text" name="meetImg"><br>
        <input type="button" id="addBun" value="提交">
    </form>
</body>
</html>
