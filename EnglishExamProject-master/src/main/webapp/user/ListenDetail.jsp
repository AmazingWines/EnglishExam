<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/4/27
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>听力试题</title>
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
    <style>
        .divla{
            border: solid 1px #f7f7f7;height: 100px;
        }
        li {
            list-style-type:none;}
    </style>
</head>
<body>
<div class="container" style="margin: 80px auto;">
    <%--<div class="col-sm-1" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 550px;padding: 0 0;">--%>
    <div class="col-sm-12" style="height: 600px;">
        <div class="col-sm-1 divla" style="border: rgba(78, 92, 107, 0)"></div>
        <div class="col-sm-1" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 550px;padding: 0 0;">
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-success" id="audio_btn_1"><span class="glyphicon glyphicon-play"></span>播放</a>
                <audio id="media" src="/static/1.mp3" loop="-1"></audio>
            </div>
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-danger" id="audio_btn_2"><span class="glyphicon glyphicon-pause"></span>暂停</a>
            </div>
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-primary"><span class="glyphicon glyphicon-export"></span>交卷</a>
            </div>
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-warning"><span class="glyphicon glyphicon-bell"></span>退出</a>
            </div>
        </div>
    </div>
</div>
    <%--</div>--%>
<script type="text/javascript">
    $(function () {
        var media = $('#media')[0];
        $('#audio_btn_1').bind('click', function() {
            media.play();
        });
        $('#audio_btn_2').bind('click', function() {
            media.pause();
        });
    });
</script>
</body>
</html>