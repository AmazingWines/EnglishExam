<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/5/5
  Time: 1:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分数诊断</title>
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
        .divl{
            height: 100px;
        }
        li {
            list-style-type:none;}
        input{
            width: 100%;
            text-align: center;
            margin: 0 0;
        }
    </style>
</head>
<body>
<div class="container" style="margin: 80px auto;">
    <div class="col-sm-12" style="text-align: center;">
        <p style="font-size: larger">范例作文</p>
        <div class="col-sm-12" style="margin-top: 20px;text-align: center;font-size: 25px;">
            ${writting1.writtingCorrectTitle}
        </div>
        <div class="col-sm-12" style="margin-top: 20px;text-align: left;">
            ${writting1.writtingCorrect}
        </div>
    </div>
    <div class="col-sm-12"style="margin-top: 50px;text-align: center">
        <p style="font-size: larger">范例翻译</p>
        <div class="col-sm-12" style="margin-top: 20px;text-align: left;">
            ${translate1.translateCorrect}
        </div>
    </div>


    <div class="col-sm-12" style="margin-top: 50px;">
        <div class="col-sm-6" style="text-align: center;">
            <span class="col-sm-12"><strong>你的选择</strong></span>
            <table class="table table-bordered text-center table-hover">
                <tr>
                    <td>题号</td>
                    <td>选择</td>
                </tr>
                <c:forEach items="${listenDos}" var="listenDos">
                    <tr>
                        <td>${listenDos.listenType}</td>
                        <td>${listenDos.doselect}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="col-sm-6"style="text-align: center;" >
            <span class="col-sm-12"><strong>标准答案</strong></span>
            <table class="table table-bordered text-center table-hover">
                <tr>
                    <td>题号</td>
                    <td>选择</td>
                </tr>
                <c:forEach items="${listenList}" var="listenList">
                    <tr>
                        <td>${listenList.listenType}</td>
                        <td>${listenList.listenCorrect}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

    <div class="col-sm-12" style="margin-top: 50px;">
        <div class="col-sm-6" style="text-align: center;">
            <span class="col-sm-12"><strong>你的选择</strong></span>
            <table class="table table-bordered text-center table-hover">
                <tr>
                    <td>题号</td>
                    <td>选择</td>
                </tr>
                <c:forEach items="${wordDos}" var="wordDos">
                    <tr>
                        <td>${wordDos.worddoNum}</td>
                        <td>${wordDos.wordSelect}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="col-sm-6" style="text-align: center;" >
            <span class="col-sm-12"><strong>标准答案</strong></span>
            <table class="table table-bordered text-center table-hover">
                <tr>
                    <td>题号</td>
                    <td>选择</td>
                </tr>
                <c:forEach items="${wordCorrectList}" var="wordCorrectList">
                    <tr>
                        <td>${wordCorrectList.wordCorrectNum}</td>
                        <td>${wordCorrectList.wordCorrect}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

    <div class="col-sm-12" style="margin-top: 50px;">
        <div class="col-sm-6" style="text-align: center;">
            <span class="col-sm-12"><strong>你的选择</strong></span>
            <table class="table table-bordered text-center table-hover">
                <tr>
                    <td>题号</td>
                    <td>选择</td>
                </tr>
                <c:forEach items="${readDos}" var="readDos">
                    <tr>
                        <td>${readDos.readdoNum}</td>
                        <td>${readDos.readdoSelect}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="col-sm-6" style="text-align: center;" >
            <span class="col-sm-12"><strong>标准答案</strong></span>
            <table class="table table-bordered text-center table-hover">
                <tr>
                    <td>题号</td>
                    <td>选择</td>
                </tr>
                <c:forEach items="${readList}" var="readList">
                    <tr>
                        <td>${readList.readNum}</td>
                        <td>${readList.readCorrect}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

    <div class="col-sm-12" style="margin-top: 50px;">
        <table class="table table-bordered text-center table-hover">
            <tr>
                <td>你的分数</td>
                <td>满分</td>
            </tr>
            <tr>
                <td style="color: red">${mark}</td>
                <td style="color: red">${fullmark}</td>
            </tr>
        </table>
        <div class="col-sm-12">
            <button class="btn btn-success" style="margin: 0 515px;" onclick="gotoMain()">退出</button>
        </div>
    </div>
</div>
<script type="text/javascript">
    function gotoMain() {
        if(confirm("确定退出吗？")) {
            window.location.href = "/user/Main.jsp";
        }
    }

</script>
</body>
</html>
