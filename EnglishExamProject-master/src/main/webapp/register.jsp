<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/4/21
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>注册账号</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/static/dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="/static/plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        <a href="#"><b>注册</b>本网站会员</a>
    </div>

    <div class="register-box-body">
        <p class="login-box-msg">请填写注册信息</p>

        <form  id="registerForm" data-toggle="validator" role="form">
            <div class="form-group has-feedback">
                <input type="text" id="userName" name="userName" class="form-control" placeholder="输入用户名..." data-error="请输入要注册的用户名" required>
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group has-feedback">
                <input type="password" id="userPassword" name="userPassword" class="form-control" placeholder="输入密码..." data-error="密码长度不短于6" data-minlength="6" required>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                <div class="help-block with-errors"></div>
            </div>
            <div class="form-group has-feedback">
                <input type="password" id="userPassword_2" name="userPassword_2" class="form-control" placeholder="确认密码..." onblur="aa()" required>
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                <div id="enqualTo" class="help-block with-errors" style="color: #dd4b39;"></div>
            </div>
            <div class="form-group has-feedback">
                <input type="text" id="userEmail" name="userEmail" class="form-control" placeholder="输入邮箱..." data-error="请输入用户邮箱" required>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                <div class="help-block with-errors"></div>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox">我同意 <a data-toggle="modal" data-target="#myModal">用户协议</a>
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button id="submitId" name="submitId" type="submit" class="btn btn-primary btn-block btn-flat">注册</button>
                </div>
                <!-- /.col -->
            </div>
        </form>
        <!-- 模态框（Modal） -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-hidden="true">×
                        </button>
                        <h4 class="modal-title" id="myModalLabel">
                            用户协议
                        </h4>
                    </div>
                    <div class="modal-body">
                        <p>网络用户隐私权保护和个人信息利用政策<br></p>
                        <p>最后更新时间：2016年4月26日</p>
                        <p>【注意】根据文化部制定的《网络管理暂行规定》及《网络服务格式化协议必备条款》（下称“必备条款”）的相关规定，为保障网络用户（下称“用户”）的隐私权、规范对网络用户个人信息的利用，特制定本政策。请用户仔细阅读以下全部内容（特别是粗体下划线标注的内容）。如用户不同意本政策的任意内容，请不要注册或使用网易服务。如用户通过进入注册程序并勾选“我同意网络游戏用户隐私权保护和个人信息利用政策”，即表示用户与计算机系统有限公司及其他合作运营主体（下列简称为“本学习网站”）已达成协议，自愿接受本政策的所有内容。此后，用户不得以未阅读本政策的内容作任何形式的抗辩。
                        尊重用户个人隐私是本公司的一项基本政策。“隐私”是指用户在注册帐号时提供给本公司的个人身份信息，包括用户注册资料中的姓名、个人有效身份证件号码、联系方式、家庭住址等。本公司一贯积极地采取技术与管理等合理措施保障用户帐号的安全、有效；本公司将善意使用收集的信息，采取各项有效且必要的措施以保护您的隐私安全，并使用商业上合理的安全技术措施来保护您的隐私不被未经授权的访问、使用或泄漏。
                        因业务所需，本公司不随便披露用户信息，但是一下情况除外：</p>
                        <p>（1）用户或用户监护人授权本公司披露的；
                        （2）有关法律要求本公司披露的；
                        （3）司法机关或行政机关基于法定程序要求网易公司提供的；
                        （4）本公司为了维护自己合法权益而向用户提起诉讼或者仲裁时；
                        （5）应用户监护人的合法要求而提供用户个人身份信息时。
                        特别提示：本政策仅适用于使用网易公司在线游戏服务的网络游戏用户。
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"
                                data-dismiss="modal">关闭
                        </button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <div class="social-auth-links text-center">
            <p>- OR -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
                Facebook</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
                Google+</a>
        </div>

        <a href="/login.jsp" class="text-center">我已经是会员，直接登录</a>
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 2.2.3 -->
<script src="/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/static/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="/static/plugins/iCheck/icheck.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
<script>
    $(function() {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });

    });
    function aa() {
        var password_1 = $("#userPassword").val();
        var password_2 = $("#userPassword_2").val();
        if (password_2!=password_1){
            $("#enqualTo").append("两次输入密码不一致");
            $("submitId").addClass("disabled");
        }
    }
    $("#submitId").click(function () {
        var params = $("#registerForm").serializeArray();
        $.ajax({
            type:'post',
            url:'/save.do',
            data:params,
            async: false,
            success:function (data) {
                if(data.code==1){
                    alert(data.msg);
                    window.close();
                    window.open('/login.jsp');
                }
                else{
                    alert(data.msg);
                }
            }
        });
    });
</script>
</body>

</html>