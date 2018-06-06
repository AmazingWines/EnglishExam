<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/4/22
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="/static/plugins/iCheck/icheck.min.js"></script>

</head>
<body>
    <form id="a">
        <input type="text" id="userName" name="userName">
        <input type="password" id="userPassword" name="userPassword">
        <button type="submit" id="submitId" name="submitId">提交</button>
    </form>
    <script type="text/javascript">
        $("#submitId").click(function () {
            var params = $("#a").serializeArray();
            $.ajax({
                type:'post',
                url:'/save.do',
                data:params,
                async: false,
                success:function (data) {
                    alert(data.msg);
                }
            });
        });
    </script>
</body>
</html>
