<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>英语学习首页</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
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
        .navbar-brand a{
            font-size: large;
            color: black;
        }
        .nav>li>a {
            position: relative;
            display: block;
            padding: 15px 25px;
            color: black;
            text-decoration: none;
        }
        /*.navbar .nav > li:active {*/
        /*background-color: green;*/
        /*}*/
        .navbar .nav >li > a:hover{
            color: white;
            background-color: green;
        }
        .navbar .nav >li > a:active{
            color: white;
            background-color: green;
        }
        a { transition:0.5s; }
        .divLayout_left_1{
            background-color: #00ff00;
            height: 100px;
            width: 40%;
            float: left;
            text-align: center;
        }
        .divLayout_left_2{
            background-color: #00c0ef;
            height: 100px;
            width: 40%;
            text-align: center;
            float: left;
        }
        .hLayout{
            color: #ffffff;
            margin-top:20px;
        }
        .divLayout_in{
            border-top: solid 2px #f7f7f7;
            margin-left: 28%;
            margin-right: 28%;
        }

        .divLayout_right_1{
            background-color: #00a65a;
            height: 100px;
            width: 40%;
            float: left;
            text-align: center;
        }
        .divLayout_right_2{
            background-color: #0d6aad;
            height: 100px;
            width: 40%;
            float: left;
            text-align: center;
        }
    </style>
</head>
<body>
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
            <a href="index.jsp" class="navbar-brand" style="font-size: 20px">在线英语学习</a>
        </div>
        <!-- 屏幕宽度小于768px时，div.navbar-responsive-collapse容器里的内容都会隐藏，显示icon-bar图标，当点击icon-bar图标时，再展开。屏幕大于768px时，默认显示。 -->
        <div class="colcollapse navbar-collapse navbar-responsive-collapse" id="mynav">
            <ul class="nav navbar-nav">
                <li><a href="index.jsp">首页</a></li>
                <li><a href="/user/listListen_page.do?page=1">听力训练</a></li>
                <li><a href="/user/listRead_Page.do?page=1">阅读训练</a></li>
                <li><a href="/user/word/listWord_Page.do?page=1">词汇训练</a></li>
                <li><a href="/user/translate/listTranslate_Page.do?page=1">翻译训练</a></li>
                <li><a href="/user/writting/listWritting_Page.do?page=1">写作训练</a></li>
                <li class="col-xs-push-9 pull-right"><span class="glyphicon glyphicon-user" style="padding: 15px;padding-right: 0px;">
                        <a href="/login.jsp" style="color: black;padding: 15px 0px;">登录</a></span></li>
            </ul>
        </div>
    </div>

</nav>
<%--正body--%>
<div class="container" style="margin: 80px auto;">
    <div class="col-xs-8" style="background-color:#f7f7f7;height: 300px;">
        <div style="width: 100%;height:auto;border-bottom: solid 1px;border-bottom-color: #a1aec7;margin-bottom: 20px;">
            <h3>专项训练</h3>
        </div>
        <div class="col-xs-6" style="padding: 5px 0;">
            <div class="divLayout_left_1">
                <h4 class="hLayout">听力</h4>
                <div class="divLayout_in">
                    <a href="/user/gotoExam.do?page=1&listen_pageId=1" style="color: #ffffff;">立即开始</a>
                </div>
            </div>
            <div class="divLayout_right_1">
                <h4 class="hLayout">阅读理解</h4>
                <div class="divLayout_in">
                    <a href="/user/ReadExam.do?page=1&read_pageId=1" style="color: #ffffff;">立即开始</a>
                </div>
            </div>
            <div class="divLayout_left_2">
                <h4 class="hLayout">翻译</h4>
                <div class="divLayout_in">
                    <a href="/user/translate/TranslateExam.do?translate_pageId=1" style="color: #ffffff;">立即开始</a>
                </div>
            </div>
            <div class="divLayout_right_2">
                <h4 class="hLayout">作文</h4>
                <div class="divLayout_in">
                    <a href="/user/writting/WrittingExam.do?writting_pageId=1" style="color: #ffffff;">立即开始</a>
                </div>
            </div>
        </div>
        <div class="col-xs-6" style="padding: 5px 0;">
            <div style="float: left;background-color: lightgrey;height: 200px;width: 100%;">
                <img src="/static/dist/img/english_1.JPG" style="height: 200px;width: 365px;">
            </div>
        </div>
    </div>
    <div class="col-xs-4" style="background-color: #f7f7f7;height: 300px;">
        <div style="width: 100%;height:auto;border-bottom: solid 1px;border-bottom-color: #a1aec7;margin-bottom: 20px;">
            <h3>能力提升</h3>
        </div>

        <div class="col-xs-4  col-xs-push-1" style="height: 100px;margin-top:100px;">
            <a href="/user/ReadExam.do?page=1&read_pageId=2">
                <img src="/static/images/read.PNG" style="position: absolute;left: 0;width: 100%;">
            </a>
        </div>
        <div class="col-xs-4" style="height: 100px;">
            <a href="/user/gotoExam.do?page=1&listen_pageId=1">
                <img src="/static/images/listen.png" style="position: absolute;left: 0;width: 100%;">
            </a>
        </div>
        <div class="col-xs-4  col-xs-pull-1" style="height: 100px;margin-top:100px;">
            <a href="/user/word/WordExam.do?word_pageId=1">
                <img src="/static/images/word.PNG" style="position: absolute;left: 0;width: 100%;">
            </a>
        </div>
    </div>

    <div class="col-xs-8" style="background-color:#f7f7f7;height: 300px;">
        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="/static/dist/img/photo1.png" alt="First slide" style="height: 280px;width: 1000px;">
                </div>
                <div class="item">
                    <img src="/static/dist/img/photo2.png" alt="Second slide" style="height: 280px;width: 1000px;">
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="carousel-control left" href="#myCarousel"
               data-slide="prev">&lsaquo;</a>
            <a class="carousel-control right" href="#myCarousel"
               data-slide="next">&rsaquo;</a>
        </div>
    </div>
    <div class="col-xs-4" style="background-color: #f7f7f7;height: 300px;">
        <div style="width: 100%;height:auto;border-bottom: solid 1px;border-bottom-color: #a1aec7;margin-bottom: 20px;">
            <h3>模拟考试</h3>
        </div>
        <div style="background-color: #81cebe;width: 100%;height: 200px;">
            <img src="/static/images/clock.png" style="position: absolute; width: 150px;height: 150px;margin-left: 85px;">
            <button class="btn btn-default" style="position:absolute;margin-left: 126px;margin-top: 155px;"><a style="color: #000000;" href="/user/Exam/GotoExam.do?examId=1">立即开始</a></button>
        </div>
    </div>
    <div class="main-footer" style="text-align: center;margin-top: 680px;margin-left: 0;">
        <strong>Copyright &copy; 2017 <a href="#">教育</a>.</strong> 英语在线学习网站
    </div>
</div>

<script type="text/javascript">
</script>

</body>
</html>