<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/4/29
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>阅读测试</title>
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
<div id="MainReadDiv" class="container" style="margin: 80px auto;">
    <div id="panel_1" class="col-sm-12" style="height: auto;">
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

        <%--播放bar--%>
        <div id="menupanel" class="col-sm-1" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: auto;padding: 0 0;">
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-primary" onclick="Total()"><span class="glyphicon glyphicon-export"></span>交卷</a>
            </div>
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
                <a class="btn btn-warning" onclick="ExittoMain()"><span class="glyphicon glyphicon-bell"></span>退出</a>
            </div>
        </div><!--播放bar-->

        <div id="readpanel" class="col-sm-10" style="border: solid 1px #f7f7f7;height:auto;padding: 0 0;">
            <div class="col-sm-12" style="border: solid 1px #f7f7f7;width:100%;height:auto;">
                <div id="mainReadTitle" class="col-sm-12" style="margin-top: 20px;">
                    ${read_page_title.readTitle}
                </div>
                <div id="mainReadList">
                        <c:forEach items="${readList}" var="readList">
                    <ul class="col-sm-12" style="margin: 10px auto;">
                        <span>${readList.readNum}.<strong>${readList.readQuestion}</strong></span>
                        <%--<li style="margin:10px auto;">--%>
                            <%--<span >${readList.readSelect_1}</span>--%>
                        <%--</li>--%>
                        <%--<li style="margin:10px auto;">--%>
                            <%--<span>${readList.readSelect_2}</span>--%>
                        <%--</li>--%>
                        <%--<li style="margin:10px auto;">--%>
                            <%--<span>${readList.readSelect_3}</span>--%>
                        <%--</li>--%>
                        <%--<li style="margin:10px auto;">--%>
                            <%--<span>${readList.readSelect_4}</span>--%>
                        <%--</li>--%>
                    </ul>
                        </c:forEach>
                </div>
            </div>
            <div class="col-sm-12" style="height: 50px;">
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
    <div id="doReadList" class="col-sm-11" style="margin-top: 0;">
        <table class="table table-bordered text-center">
            <tr>
                <td colspan="20" class="text-center">答题卡</td>
            </tr>
            <tr>
                <td>36</td>
                <td>37</td>
                <td>38</td>
                <td>39</td>
                <td>40</td>
                <td>41</td>
                <td>42</td>
                <td>43</td>
                <td>44</td>
                <td>45</td>
                <td>46</td>
                <td>47</td>
                <td>48</td>
                <td>49</td>
                <td>50</td>
                <td>51</td>
                <td>52</td>
                <td>53</td>
                <td>54</td>
                <td>55</td>
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
        </table>
    </div>

</div>
<div class="main-footer col-sm-12" style="text-align: center;margin-top: 0px;margin-left: 0;">
    <strong>Copyright &copy; 2017 <a href="#">教育</a>.</strong> 英语在线学习网站
</div>

<script type="text/javascript">

    var read_pageId = ${sessionScope.read_pageId};
    var pageTotal=${pageAmount};
    var currentPage=${page};
    var pre = (currentPage-1);
    var next = (currentPage+1);

    function Total() {
        var numArr = []; // 定义一个空数组
        var txt = $('#doReadList').find(':text'); // 获取所有文本框
        for (var i = 0; i < txt.length; i++) {
            numArr.push(txt.eq(i).val()); // 将文本框的值添加到数组中
        }

        $.ajax({
            type:'post',
            url:'/user/doReadExam.do?read_pageId='+read_pageId+'&numArr[]='+numArr,
            success:function (data) {
                $("#MainReadDiv").html(data)
            }
        });
    }
    function ExittoMain() {
        if(confirm("确定退出吗？")) {
            window.location.href = "/user/Main.jsp";
        }
    }

    $(function () {

        $("#menupanel").css("height", $("#readpanel").height());

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
            $("#mainReadList").empty();
            $("#mainReadTitle").empty();
            $.ajax({
                type:'post',
                url:'/user/ajaxReadExam.do?read_pageId='+read_pageId+'&page='+pre,
                async: false,
                success:function (data) {
                    pageTotal = data.totalNum
                    currentPage=data.pageNum
                    pre=(currentPage-1)
                    next=(currentPage+1)
                    $("#mainReadTitle").append(data.obj.readTitle)
                    $.each(data.data, function(i,item){
                        $("#mainReadList").append('<ul id="mainU'+(i+1)+'" class="col-sm-12" style="margin: 10px auto;"></ul>')
                        $("#mainU"+(i+1)).append('<span>'+item.readNum+'.<strong>'+item.readQuestion+'</strong></span>')
                        if(item.readSelect_1!=null){
                            $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.readSelect_1 +'</span> </li>')
                            $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.readSelect_2 +'</span> </li>')
                            $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.readSelect_3 +'</span> </li>')
                            $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.readSelect_4 +'</span> </li>')
                        }
                    });
                    $("#panel_1").css("height", $("#readpanel").height()+100);
                    $("#menupanel").css("height", $("#readpanel").height());
                    $("#doReadList").css("margin-top:",0);
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
            $("#mainReadList").empty();
            $("#mainReadTitle").empty();
            $.ajax({
                type:'post',
                url:'/user/ajaxReadExam.do?read_pageId='+read_pageId+'&page='+next,
                async: false,
                success:function (data) {
                    pageTotal = data.totalNum
                    currentPage=data.pageNum
                    pre=(currentPage-1)
                    next=(currentPage+1)
                    $("#mainReadTitle").append(data.obj.readTitle)
                    $.each(data.data, function(i,item){
                        $("#mainReadList").append('<ul id="mainU'+(i+1)+'" class="col-sm-12" style="margin: 10px auto;"></ul>')
                        $("#mainU"+(i+1)).append('<span>'+item.readNum+'.<strong>'+item.readQuestion+'</strong></span>')
                        if(item.readSelect_1!=null){
                            $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.readSelect_1 +'</span> </li>')
                            $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.readSelect_2 +'</span> </li>')
                            $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.readSelect_3 +'</span> </li>')
                            $("#mainU"+(i+1)).append('<li style="margin:10px auto;"> <span>'+item.readSelect_4 +'</span> </li>')
                        }
                    });
                    $("#panel_1").css("height", $("#readpanel").height()+100);
                    $("#menupanel").css("height", $("#readpanel").height());
                    $("#doReadList").css("margin-top:",0);
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
