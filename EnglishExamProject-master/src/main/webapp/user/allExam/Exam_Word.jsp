<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/5/4
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-sm-1" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 550px;padding: 0 0;">
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
</div>

<div id="main_word" class="col-sm-10" style="border: solid 1px #f7f7f7;height:550px;padding: 0 0;">
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
            <div class="col-sm-12" id="mainWordList" style="margin-top: 50px;">
                    ${wordList.wordTitle}
            </div>
        </c:forEach>
    </div>
    <div class="col-sm-12">
        <%--分页--%>
        <div class="col-sm-9 col-sm-push-9" style="position: absolute;">
            <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                <ul id="list" class="pagination" style="margin:8px 0;">
                </ul>
            </div>
        </div>
    </div>
</div>
