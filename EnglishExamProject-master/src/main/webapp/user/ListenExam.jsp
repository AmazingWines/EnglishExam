<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/4/27
  Time: 15:10
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
        input{
            width: 100%;
            text-align: center;
            margin: 0 0;
        }
    </style>
</head>
<body>
<%--正body--%>
<div id="MainDiv" class="container" style="margin: 80px auto;">
    <div class="col-sm-12" style="height: 600px;">
        <%--<div class="col-sm-12">--%>
        <div class="col-sm-1 divla">
        </div>
        <div class="col-sm-4 divla" style="background-color: #4e5c6b">

        </div>
        <div class="col-sm-2 divla" style="background-color: #eaeaea">
            <button id="section_A" class="btn btn-default" style="width: 130px;height: 70px;margin: 15px 10px;">Section A</button>
        </div>
        <div class="col-sm-2 divla" style="background-color: #eaeaea">
            <button id="section_B" class="btn btn-default" style="width: 130px;height: 70px;margin: 15px 10px;">Section B</button>
        </div>
        <div class="col-sm-2 divla" style="background-color: #eaeaea">
            <button id="section_C" class="btn btn-default" style="width: 130px;height: 70px;margin: 15px 10px;">Section C</button>
        </div>
        <div class="col-sm-1 divla" style="border: rgba(78, 92, 107, 0)"></div>
        <%--</div>--%>

        <%--播放bar--%>
        <div class="col-sm-1" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 550px;padding: 0 0;">
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-success" id="audio_btn_1"><span class="glyphicon glyphicon-play"></span>播放</a>
                <audio id="media" src="${sessionScope.listenUrl}" loop="-1"></audio>
            </div>
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-danger" id="audio_btn_2"><span class="glyphicon glyphicon-pause"></span>暂停</a>
            </div>
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-primary" onclick="Total()"><span class="glyphicon glyphicon-export"></span>交卷</a>
            </div>
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-warning" onclick="ExittoMain()"><span class="glyphicon glyphicon-bell"></span>退出</a>
            </div>

        </div><!--播放bar-->

        <div class="col-sm-10" style="border: solid 1px #f7f7f7;height:550px;padding: 0 0;">
            <div id="direction" class="col-sm-12" style="border: solid 1px #f7f7f7;width:100%;height:80px;background-color: #eaeaea;">
            </div>
            <div id="mainList" class="col-sm-12"style="border: solid 1px #f7f7f7;width:100%;height:370px;">
                <c:forEach items="${listenList}" var="listenList">
                <ul id="mainU" class="col-sm-6" style="margin: 10px auto;">
                    <span><strong id="item">${listenList.listenType}.</strong></span>
                    <li style="margin:10px auto;">
                       <span id="item_1">${listenList.listenSelect_1}</span>
                    </li>
                    <li style="margin:10px auto;">
                        <span id="item_2">${listenList.listenSelect_2}</span>
                    </li>
                    <li style="margin:10px auto;">
                        <span id="item_3">${listenList.listenSelect_3}</span>
                    </li>
                    <li style="margin:10px auto;">
                       <span id="item_4">${listenList.listenSelect_4}</span>
                    </li>
                </ul>
                </c:forEach>
            </div>

            <div class="col-sm-12">
                <%--分页--%>
                    <div class="col-sm-9 col-sm-push-9" style="position: absolute;">
                        <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                            <ul id="list" class="pagination">
                                <li class="paginate_button previous" id="example1_previous"><a id="pre" href="#"  aria-controls="example1" data-dt-idx="0" tabindex="0" >上一页</a></li>
                                <li class="paginate_button next" id="example1_next"><a id="next" href="#"  aria-controls="example1" data-dt-idx="7" tabindex="0" >下一页</a></li>
                            </ul>
                        </div>
                    </div>
            </div>
        </div>
    </div>
    <%--答题卡--%>

    <div id="dolistenList" class="col-sm-11" style="margin-top: 50px;">
        <table class="table table-bordered text-center">
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
                <td>11</td>
                <td>12</td>
                <td>13</td>
                <td>14</td>
                <td>15</td>
                <td>16</td>
                <td>17</td>
                <td>18</td>
                <td>19</td>
                <td>20</td>
                <td>21</td>
                <td>22</td>
                <td>23</td>
                <td>24</td>
                <td>25</td>
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
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
        </table>
    </div>

    <div class="main-footer" style="text-align: center;margin-top: 800px;margin-left: 0;">
        <strong>Copyright &copy; 2017 <a href="#">教育</a>.</strong> 英语在线学习网站
    </div>
    <%--<div id="a">--%>

    <%--</div>--%>
</div>

<script type="text/javascript">

    var listen_pageId = ${sessionScope.listen_pageId};
    var pageTotal=${pageAmount};
    var currentPage=${page};
    var pre = (currentPage-1);
    var next = (currentPage+1);
    <%--var userName = ${sessionScope.userName};--%>

    function Total() {
        var numArr = []; // 定义一个空数组
        var txt = $('#dolistenList').find(':text'); // 获取所有文本框
        for (var i = 0; i < txt.length; i++) {
            numArr.push(txt.eq(i).val()); // 将文本框的值添加到数组中
        }
//        var path = "/user/doListen.do?listen_pageId='+listen_pageId+'&numArr[]='+numArr";
//        $("#mydolisten").attr("action", "/user/doListen.do?listen_pageId='+listen_pageId+'&numArr[]='+numArr").submit();
        $.ajax({
            type:'post',
            url:'/user/doListen.do?listen_pageId='+listen_pageId+'&numArr[]='+numArr,
            success:function (data) {
                $("#MainDiv").html(data)

            }
        });
    }
    function ExittoMain() {
        if(confirm("确定退出吗？")) {
            window.location.href = "/user/Main.jsp";
        }
    }

    $(function () {
        $('#section_A').click();
        var media = $('#media')[0];
        $('#audio_btn_1').bind('click', function () {
            media.play();
        });
        $('#audio_btn_2').bind('click', function () {
            media.pause();
        });
        $('#section_A').bind('click', function () {
            $("#direction").html("<p style='font-style: italic;'>Directions: In this section, you will hear three news reports. At the end of each news " +
                    "report, you will hear two or three questions. Both the news report and the questions will be spoken only " +
                    "once. After you hear a question, you must choose the best answer from the four choices marked A, B, C and D. " +
                    "Then mark the corresponding letter on Answer Sheet 1 with a single line through the centre.<p>")
        });
        $('#section_B').bind('click', function () {
            $("#direction").html("<p style='font-style: italic;'>Directions: In this section, you will hear two long conversations. At the end of each" +
                    " conversation, you will hear four questions. Both the conversation and the questions will be spoken only once. After you hear a question," +
                    " you must choose the best answer from the four choices marked A, B, C and D. Then mark the corresponding letter on Answer Sheet 1with a single" +
                    " line through the centre.<p>")
        });
        $('#section_C').bind('click', function () {
            $("#direction").html("<p style='font-style: italic;'>Directions: In this section, you will hear three passages. At the end of each passage, you " +
                    "will hear three or four questions. Both the passage and the questions will be spoken only once. After you hear a question, you must choose the " +
                    "best answer from the four choices marked A, B, C and D. Then mark the corresponding letter on Answer Sheet 1 with a single line through the centre.<p>")
        });

        if (pageTotal == 1) {
            pre=(pre+1)
            next=(next-1)
        } else if (currentPage == pageTotal) {
            next=(next-1)
        } else if ((currentPage-1) == 0) {
            pre=(pre+1)
        } else {
            pre=pre;
            next=next;
        }


        $('#pre').bind('click', function() {
            $("#mainList").empty();
            $.ajax({
                type:'post',
                url:'/user/ajaxExam.do?listen_pageId='+listen_pageId+'&page='+pre,
                async: false,
                success:function (data) {
                    pageTotal = data.totalNum
                    currentPage=data.pageNum
                    pre=(currentPage-1)
                    next=(currentPage+1)
                    $.each(data.data, function(i,item){
                        $("#mainList").append('<ul id="mainU'+(i+1)+'" class="col-sm-6" style="margin: 10px auto;"></ul>')
                        $("#mainU"+(i+1)).append('<span><strong>'+item.listenType+'.</strong></span>')
                        $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.listenSelect_1 +'</span> </li>')
                        $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.listenSelect_2 +'</span> </li>')
                        $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.listenSelect_3 +'</span> </li>')
                        $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.listenSelect_4 +'</span> </li>')
                    });
                    if (pageTotal == 1) {
                        pre=(pre+1)
                        next=(next-1)
                    } else if (currentPage == pageTotal) {
                        next=(next-1)
                    } else if ((currentPage-1) == 0) {
                        pre=(pre+1)
                    } else {
                        pre=pre;
                        next=next;
                    }
                }
            });
        });
        $('#next').bind('click', function() {
            $("#mainList").empty();
            $.ajax({
                type:'post',
                url:'/user/ajaxExam.do?listen_pageId='+listen_pageId+'&page='+next,
                async: false,
                success:function (data) {
                    pageTotal = data.totalNum
                    currentPage=data.pageNum
                    pre=(currentPage-1)
                    next=(currentPage+1)
                    $.each(data.data, function(i,item){
                        $("#mainList").append('<ul id="mainU'+(i+1)+'" class="col-sm-6" style="margin: 10px auto;"></ul>')
                        $("#mainU"+(i+1)).append('<span><strong>'+item.listenType+'.</strong></span>')
                        $("#mainU"+(i+1)).append('<li style="margin:10px auto;"><span>'+item.listenSelect_1 +'</span> </li>')
                        $("#mainU"+(i+1)).append('<li style="margin:10px auto;"><span>'+item.listenSelect_2 +'</span> </li>')
                        $("#mainU"+(i+1)).append('<li style="margin:10px auto;"><span>'+item.listenSelect_3 +'</span> </li>')
                        $("#mainU"+(i+1)).append('<li style="margin:10px auto;"><span>'+item.listenSelect_4 +'</span> </li>')
                    });
                    if (pageTotal == 1) {
                        pre=(pre+1)
                        next=(next-1)
                    } else if (currentPage == pageTotal) {
                        next=(next-1)
                    } else if ((currentPage-1) == 0) {
                        pre=(pre+1)
                    } else {
                        pre=pre;
                        next=next;
                    }
                }
            });
        });
    });
</script>
</body>
</html>
