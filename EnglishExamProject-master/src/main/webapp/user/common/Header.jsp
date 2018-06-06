<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/4/24
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav>
    <div class="navbar navbar-default navbar-fixed-top">
        <div class="navbar-header">
            <!-- .navbar-toggle样式用于toggle收缩的内容，即nav-collapse collapse样式所在元素 -->
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#mynav">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- 确保无论是宽屏还是窄屏，navbar-brand都显示 -->
            <a href="##" class="navbar-brand" style="font-size: 20px">在线英语学习</a>
        </div>
        <!-- 屏幕宽度小于768px时，div.navbar-responsive-collapse容器里的内容都会隐藏，显示icon-bar图标，当点击icon-bar图标时，再展开。屏幕大于768px时，默认显示。 -->
        <div class="colcollapse navbar-collapse navbar-responsive-collapse" id="mynav">
            <ul class="nav navbar-nav">
                <li><a href="/user/Main.jsp">首页</a></li>
                <li><a href="/user/listListen_page.do?page=1">听力训练</a></li>
                <li><a href="/user/listRead_Page.do?page=1">阅读训练</a></li>
                <li><a href="/user/word/listWord_Page.do?page=1">词汇训练</a></li>
                <li><a href="/user/translate/listTranslate_Page.do?page=1">翻译训练</a></li>
                <li><a href="/user/writting/listWritting_Page.do?page=1">写作训练</a></li>
                <li class="col-xs-push-9 pull-right dropdown user user-menu">
                    <!-- Menu Toggle Button -->
                    <a href="#" class="dropdown-toggle pull-right" data-toggle="dropdown">
                        <!-- The user image in the navbar-->
                        <img src="/static/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                        <!-- hidden-xs hides the username on small devices so only the image appears. -->
                        <span class="hidden-xs"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- The user image in the menu -->
                        <li class="user-header">
                            <img src="/static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                            <p style="color:#000000;">
                                ${sessionScope.userName}
                                <small></small>
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="/userInfo.do?userName=${sessionScope.userName}" class="btn btn-default btn-flat">修改用户信息</a>
                            </div>
                            <div class="pull-right">
                                <a href="/logout.do" class="btn btn-default btn-flat">注销登录</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>

</nav>
