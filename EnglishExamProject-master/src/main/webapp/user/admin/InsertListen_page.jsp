<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/4/26
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加听力训练试题</title>
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
<jsp:include page="/user/common/Header.jsp"/>
<%--Body--%>
<div class="container" style="margin: 80px auto;">
    <form action="/user/admin/addListen_page.do" id="insertListen_page" enctype="multipart/form-data" method="post" >
        <table class="table table-bordered table-hover">
            <tr>
                <td width="10%" class="tableleft">试卷名称</td>
                <td>
                    <input type="hidden" name="listen_pageId">
                    <input class="inputclass" type="text" id="listen_pageName" name="listen_pageName">
                </td>
            </tr>
            <tr>
                <td width="10%" class="tableleft">试卷类型</td>
                <td>
                    <input type="radio" name="listen_pageType" value="1" checked/> 专项
                    <input type="radio" name="listen_pageType" value="2"/> 提升
                </td>
            </tr>
            <tr>
                <td width="10%" class="tableleft">试卷音频</td>
                <td>
                    <input class="inputclass" type="file" name="listenUrl">
                </td>
            </tr>
            <tr>
                <td width="10%" class="tableleft">试卷摘要</td>
                <td>
                    <textarea id="listen_summary" name="listen_summary"></textarea>
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
    <jsp:include page="/user/common/Footer.jsp"/>
</div>
</body>
</html>
