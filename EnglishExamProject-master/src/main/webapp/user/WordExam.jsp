<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/4/30
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>词汇测试</title>
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
<div id="MainWordDiv" class="container" style="margin: 80px auto;">
    <div class="col-sm-12" style="height: 600px;">
        <%--<div class="col-sm-12">--%>
        <div class="col-sm-1 divla">
        </div>
        <div class="col-sm-4 divl" style="background-color: #4e5c6b">

        </div>
        <div class="col-sm-2 divl" style="background-color: #eaeaea">

        </div>
        <div class="col-sm-2 divl" style="background-color: #eaeaea">

        </div>
        <div class="col-sm-2 divl" style="background-color: #eaeaea">

        </div>
        <div class="col-sm-1 divl" style="border: rgba(78, 92, 107, 0)"></div>
        <%--</div>--%>

        <div class="col-sm-1" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 550px;padding: 0 0;">
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-primary" onclick="Total()"><span class="glyphicon glyphicon-export"></span>交卷</a>
            </div>
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-warning" onclick="ExittoMain()"><span class="glyphicon glyphicon-bell"></span>退出</a>
            </div>
        </div>

        <div class="col-sm-10" style="border: solid 1px #f7f7f7;height:550px;padding: 0 0;">
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;width:100%;height:500px;">
                <c:forEach items="${wordList}" var="wordList">
                <div class="col-sm-12" style="margin-top: 20px;width:100%;height:80px;background-color: #eaeaea;">
                    ${wordList.word_select1}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select2}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select3}&nbsp;&nbsp;&nbsp;&nbsp;
                    ${wordList.word_select4}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select5}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select6}&nbsp;&nbsp;&nbsp;&nbsp;
                    ${wordList.word_select5}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select6}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select7}&nbsp;&nbsp;&nbsp;&nbsp;
                    ${wordList.word_select8}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select9}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select10}&nbsp;&nbsp;&nbsp;&nbsp;
                    ${wordList.word_select11}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select12}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select13}&nbsp;&nbsp;&nbsp;&nbsp;
                    ${wordList.word_select14}&nbsp;&nbsp;&nbsp;&nbsp;${wordList.word_select15}
                </div>
                <div class="col-sm-12" id="mainWordList">
                    ${wordList.wordTitle}
                </div>
                </c:forEach>
            </div>
            <div class="col-sm-12">
                <%--分页--%>
                <div class="col-sm-9 col-sm-push-9" style="position: absolute;">
                    <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                        <ul id="list" class="pagination" style="margin:8px 0;">
                            <li class="paginate_button previous" id="example1_previous"><a id="pre" href="#"  aria-controls="example1" data-dt-idx="0" tabindex="0" >上一页</a></li>
                            <li class="paginate_button next" id="example1_next"><a id="next" href="#"  aria-controls="example1" data-dt-idx="7" tabindex="0" >下一页</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--答题卡--%>
    <div id="doWordList" class="col-sm-11" style="margin-top: 50px;">
        <table class="table table-bordered text-center">
            <tr>
                <td colspan="15" class="text-center">答题卡</td>
            </tr>
            <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
                <td>7</td>
                <td>8</td>
                <td>9</td>
                <td>10</td>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
        </table>
    </div>
    <div class="main-footer" style="text-align: center;margin-top: 860px;margin-left: 0;">
        <strong>Copyright &copy; 2017 <a href="#">教育</a>.</strong> 英语在线学习网站
    </div>
</div>
<script type="text/javascript">
    var word_pageId = ${word_pageId};
    function Total() {
        var numArr = []; // 定义一个空数组
        var txt = $('#doWordList').find(':text'); // 获取所有文本框
        for (var i = 0; i < txt.length; i++) {
            numArr.push(txt.eq(i).val()); // 将文本框的值添加到数组中
        }

        $.ajax({
            type:'post',
            url:'/user/word/doWordExam.do?word_pageId='+word_pageId+'&numArr[]='+numArr,
            success:function (data) {
                $("#MainWordDiv").html(data)
            }
        });
    }
    function ExittoMain() {
        if(confirm("确定退出吗？")) {
            window.location.href = "/user/Main.jsp";
        }
    }
</script>
</body>
</html>
