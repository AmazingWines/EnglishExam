<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/4/24
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户个人信息</title>
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/static/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/static/dist/css/skins/_all-skins.min.css">
    <%--自写布局--%>
    <link rel="stylesheet" href="/static/dist/css/myLayout.css">
    <!-- jQuery 2.2.3 -->
    <script src="/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="/static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="/static/plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="/static/dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="/static/dist/js/demo.js"></script>
</head>
<body>
<%--导航条--%>
    <jsp:include page="common/Header.jsp"/>
<%--Body--%>
    <div class="container" style="margin: 80px auto;">
        <form id="modifyUserInfo" >
            <table class="table table-bordered table-hover">
                <tr>
                    <td width="10%" class="tableleft">用户名</td>
                    <td>
                        <input type="hidden" name="userId" value="${user.userId}">
                        <input class="inputclass" type="text" id="userName" name="userName" value="${user.userName}" disabled>
                    </td>
                </tr>
                <tr>
                    <td width="10%" class="tableleft">修改密码</td>
                    <td>
                        <input class="inputclass" type="password" id="userPassword" name="userPassword" onblur="equalPassword_1()" required>
                        <span id="passwordError" class="alert-error"></span>
                    </td>
                </tr>
                <tr>
                    <td width="10%" class="tableleft">确认密码</td>
                    <td>
                        <input class="inputclass" type="password" id="userPassword_2" name="userPassword_2" onblur="equalPassword_2()" required>
                        <span id="passwordError_2" class="alert-error"></span>
                    </td>

                </tr>
                <tr>
                    <td width="10%" class="tableleft">用户QQ</td>
                    <td>
                        <input class="inputclass"  type="text" id="userQQ" name="userQQ" value="${user.userQQ}">
                    </td>
                </tr>
                <tr>
                    <td width="10%" class="tableleft">用户电话</td>
                    <td>
                        <input class="inputclass" type="text" id="userTel" name="userTel" value="${user.userTel}">
                    </td>
                </tr>
                <tr>
                    <td width="10%" class="tableleft">用户邮箱</td>
                    <td>
                        <input class="inputclass" type="text" id="userEmail" name="userEmail" value="${user.userEmail}" disabled>
                    </td>
                </tr>
                <tr>
                    <td class="tableleft"></td>
                    <td>
                        <button id="submitId" type="submit" class="btn btn-primary" type="button" >保存</button> &nbsp;&nbsp;
                        <button type="button" class="btn btn-success" name="backid" id="backid">返回主页</button>
                    </td>
                </tr>
            </table>
        </form>
        <%--footer--%>
        <jsp:include page="common/Footer.jsp"/>
    </div>
    
    <script type="text/javascript">
        $(function () {
            $('#backid').click(function(){
                window.location.href="/user/Main.jsp";
            });

        });
        function equalPassword_1() {
            var password_1 = $("#userPassword").val();
             if (password_1.length < 6) {
                $("#passwordError").text("用户密码长度不短于6个字符");
            }else
            {
                $("#passwordError").empty();
            }
        }
        function equalPassword_2() {
            var password_1 = $("#userPassword").val();
            var password_2 = $("#userPassword_2").val();

            if(password_1!=password_2){
                $("#passwordError_2").text("两次输入密码不一致！");
            }else {
                $("#passwordError_2").empty();
            }
        }
        $("#modifyUserInfo").submit(function () {
            if(confirm("确定修改吗？")){
                var params = $("#modifyUserInfo").serializeArray();
                $.ajax({
                    type:'post',
                    url:'/modifyUserInfo.do',
                    data:params,
//                    async: false,
                    success:function (data) {
                        if(data.code==1){
                            alert(data.msg);
//                            window.close();
//                            window.open('/user/Main.jsp');
                            window.location.href = "/index.jsp";
                        } else{
                            alert(data.msg);
                        }
                    }
                });
                return false;
            }
        });


    </script>
</body>
</html>
