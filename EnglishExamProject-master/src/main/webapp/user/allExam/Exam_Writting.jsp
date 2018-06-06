<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/5/3
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>模拟测试</title>
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
    <div class="col-sm-12" style="height: 750px;">
        <%--<div class="col-sm-12">--%>
        <div class="col-sm-1 divla">
        </div>
        <div class="col-sm-4 divl" style="background-color: #4e5c6b;text-align: center;">
            <p id="time" style="font-size: 70px;color: white;">30:00</p>
        </div>
        <div class="col-sm-2 divl" style="background-color: #eaeaea">

        </div>
        <div class="col-sm-2 divl" style="background-color: #eaeaea">

        </div>
        <div class="col-sm-2 divl" style="background-color: #eaeaea">

        </div>
        <div class="col-sm-1 divl" style="border: rgba(78, 92, 107, 0)"></div>
        <%--</div>--%>

        <div class="col-sm-1" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 750px;padding: 0 0;">
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-success" onclick="submitForm()"><span class="glyphicon glyphicon-export"></span>交卷</a>
            </div>
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-warning" onclick="ExittoMain()"><span class="glyphicon glyphicon-bell"></span>退出</a>
            </div>
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">

            </div>
        </div>

        <div  class="col-sm-10" style="border: solid 1px #f7f7f7;height:750px;padding: 0 0;">
            <div id="WrittingMain" class="col-sm-12" style="border: solid 1px #f7f7f7;width:100%;height:750px;padding: 0 0;">
                <div  class="col-sm-12" style="margin-top: 20px;width:100%;height:120px;background-color: #eaeaea;padding:20px 20px;font-style: italic;">
                    ${writting.writtingTitle}
                </div>
                <form id="WrittingForm">
                    <div class="col-sm-12"  style="height: 200px;margin-top: 20px;">
                        <input id="writtingdoTitle" name="writtingdoTitle" type="text" style="margin-left: auto;" placeholder="please write your title...">
                        <textarea id="writtingdoWrite" name="writtingdoWrite" style="width: 100%;height: 100%;"placeholder="please write your essay..."></textarea>
                    </div>
                </form>
            </div>
            <div class="col-sm-12">
                <%--分页--%>
                <div class="col-sm-9 col-sm-push-9" style="position: absolute;">
                    <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                        <ul id="list" class="pagination" style="margin:8px 0;">
                            <%--<li class="paginate_button previous" id="example1_previous"><a id="pre" href="#"  aria-controls="example1" data-dt-idx="0" tabindex="0" >上一页</a></li>--%>
                            <%--<li class="paginate_button next" id="example1_next"><a id="next" href="#"  aria-controls="example1" data-dt-idx="7" tabindex="0" >下一页</a></li>--%>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-footer" style="text-align: center;margin-top: 860px;margin-left: 0;">
        <strong>Copyright &copy; 2017 <a href="#">教育</a>.</strong> 英语在线学习网站
    </div>
</div>
</body>
<script type="text/javascript">

    $(function () {
        var m = 29;
        var s = 59;
        setInterval(function () {
            if (s < 10) {
                $('#time').html(m + ':0' + s);
            } else {
                $('#time').html(m + ':' + s);
            }
            s--;
            if (s < 0) {
                s = 59;
                m--;
            }
            if (m == 0 && s == 0) {
                submitForm();
            }
        }, 1000)
    });

    var writting_pageId = ${writting_pageId};
    var listen_pageId = ${sessionScope.elisten_pageId};
    function submitForm() {
        if(confirm("确定提交作文吗？")) {
            var params = $("#WrittingForm").serializeArray();
            $.ajax({
                type: 'post',
                url: '/user/Exam/doExam_Writting.do?writting_pageId=' + writting_pageId,
                data: params,
                async: false,
                success: function (data) {
                }
            });
            window.location.href = "/user/Exam/Exam_Listen.do?page=1&listen_pageId="+listen_pageId;
        }
    }
    function ExittoMain() {
        if(confirm("考试没结束，确定退出吗？")) {
            window.location.href = "/user/Main.jsp";
        }
    }
</script>
</html>
