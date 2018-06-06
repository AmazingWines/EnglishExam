<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/5/1
  Time: 0:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-sm-12">
    <div class="col-sm-6">
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
            <tr>
                <td>你的得分</td>
                <td style="color: red">${mark}</td>
            </tr>
        </table>
    </div>
    <div class="col-sm-6" >
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
            <tr>
                <td>满分</td>
                <td style="color: red">${fullmark}</td>
            </tr>
        </table>
    </div>
    <div class="col-sm-12">
        <button class="btn btn-success" style="margin: 0 515px;" onclick="gotoMain()">退出</button>
    </div>
</div>
<script type="text/javascript">
    function gotoMain() {
        if(confirm("确定退出吗？")) {
            window.location.href = "/user/Main.jsp";
        }
    }

</script>
