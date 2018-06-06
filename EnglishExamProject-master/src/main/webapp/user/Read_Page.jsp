<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/4/29
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>阅读列表</title>
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
<%--header--%>
<jsp:include page="common/Header.jsp"/>
<%--body--%>
<div class="container" style="margin: 80px auto;">
    <div class="col-xs-12" style="height: 700px;">
        <div style="margin: 20px 0;">
            <ul>
                <c:forEach items="${read_pageList}" var="read_pageList">
                    <li style="margin-bottom: 20px;background-color:#f7f7f7;padding:10px 10px;">
					  	    <span>
					  		    <p style="font-size: 20px;">${read_pageList.read_pageName}</p>
					  	    </span>
                        <span>摘要: ${read_pageList.read_pageSummary }....</span>
                        <br>
                        <br>
					  	    <span>
                                <a href="/user/ReadExam.do?page=1&read_pageId=${read_pageList.read_pageId}">开始训练</a>&nbsp;&nbsp;
					  	    </span>
                    </li>
                    <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:10px;" />
                </c:forEach>
            </ul>
            <div class="col-sm-9 col-sm-push-9" style="position: absolute;top: 600px;">
                <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                    <ul id="list" class="pagination">
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <%--footer--%>
    <div class="main-footer" style="text-align: center;margin-top: 750px;margin-left: 0;">
        <strong>Copyright &copy; 2017 <a href="#">教育</a>.</strong> 英语在线学习网站
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {

        var pageTotal = ${pageAmount};
        var currentPage = ${page};
        var pre = currentPage-1;
        var next = currentPage+1;

        $("#list").append('<li class="paginate_button previous" id="example1_previous"><a id="pre" href="#" aria-controls="example1" data-dt-idx="0" tabindex="0" >上一页</a></li>')
        $('#pre').attr('href','/user/listRead_Page.do?page='+pre)
        for (var i = 0; i < pageTotal; i++) {
            $("#list").append('<li class="paginate_button" id="example1_current'+(i+1)+'"><a id="current'+(i+1)+'" href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">'+(i+1)+'</a></li>')
            $('#current'+(i+1)).attr('href','/user/listRead_Page.do?page='+(i+1))
            if ((i+1)==currentPage) {
                $("#example1_current"+(i+1)).addClass('active')
            }
        }
        $("#list").append('<li class="paginate_button next" id="example1_next"><a id="next" href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">下一页</a></li>')
        $('#next').attr('href','/user/listRead_Page.do?page='+next);
        if (pageTotal==1){
            $("#example1_previous").addClass('disabled')
            $('#pre').attr('href','#')
            $("#example1_next").addClass('disabled')
            $('#next').attr('href','#')
        } else if(currentPage==pageTotal) {
            $("#example1_next").addClass('disabled')
            $('#next').attr('href','#')
        }else if(pre==0){
            $("#example1_previous").addClass('disabled')
            $('#pre').attr('href','#')
        } else {
            $("#example1_previous").removeClass('disabled')
            $("#example1_next").removeClass('disabled')
        }
    });
</script>

</body>
</html>
