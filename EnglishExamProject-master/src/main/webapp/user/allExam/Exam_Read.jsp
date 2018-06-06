<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/5/4
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-sm-1" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 1600px;padding: 0 0;">
    <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
        <a class="btn btn-success" onclick="Total()"><span class="glyphicon glyphicon-export"></span>交卷</a>
    </div>
    <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
        <a class="btn btn-warning" onclick="ExittoMain()"><span class="glyphicon glyphicon-bell"></span>退出</a>
    </div>
    <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 5%;">
        <a id="gotopre" class="btn btn-primary" onclick="gotopre()"><span class="glyphicon glyphicon-hand-down" style="font-size: 0px;"></span>上一阶段</a>
    </div>
    <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 5%;">
        <a id="gotonext" class="btn btn-primary" onclick="gotonext()"><span class="glyphicon glyphicon-hand-up" style="font-size: 0px;"></span>下一阶段</a>
    </div>
</div><!--播放bar-->

<div class="col-sm-10" style="border: solid 1px #f7f7f7;height:1600px;padding: 0 0;">
    <div class="col-sm-12" style="border: solid 1px #f7f7f7;width:100%;height:1550px;">
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
<script type="text/javascript">

    var read_pageId = ${sessionScope.eread_pageId};
    var pageTotal=${pageAmount};
    var currentPage=${page};
    var pre = (currentPage-1);
    var next = (currentPage+1);

    $(function () {
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