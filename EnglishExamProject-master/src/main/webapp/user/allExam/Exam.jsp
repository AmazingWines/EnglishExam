<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/5/4
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>模拟测试</title>
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
<div class="container" style="margin: 80px auto;">
    <div class="col-sm-12" style="height: auto;">
        <%--<div class="col-sm-12">--%>
        <div class="col-sm-1 divla">
        </div>
        <div class="col-sm-4 divl" style="background-color: #4e5c6b">
            <p id="time" style="font-size: 70px;color: white;">75:00</p>
        </div>
        <div class="col-sm-2 divl" style="background-color: #eaeaea">

        </div>
        <div class="col-sm-2 divl" style="background-color: #eaeaea">

        </div>
        <div class="col-sm-2 divl" style="background-color: #eaeaea">

        </div>
        <div class="col-sm-1 divl" style="border: rgba(78, 92, 107, 0)"></div>
        <%--</div>--%>
        <div id="maindiv" class="col-sm-12" style="padding: 0 0;">

        </div>
    </div>
    <%--答题卡--%>
    <div id="doWordList" class="col-sm-11" style="margin-top: 50px;">
        <table class="table table-bordered text-center">
            <tr>
                <td colspan="10" class="text-center">填词答题卡</td>
            </tr>
            <tr>
                <td>26</td>
                <td>27</td>
                <td>28</td>
                <td>29</td>
                <td>30</td>
                <td>31</td>
                <td>32</td>
                <td>33</td>
                <td>34</td>
                <td>35</td>
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
    <div id="doReadList" class="col-sm-11" style="margin-top: 0px;">
        <table class="table table-bordered text-center">
            <tr>
                <td colspan="20" class="text-center">阅读答题卡</td>
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
    <form id="translateForm">
        <div class="col-sm-11"  style="height: 150px;margin-top: 20px;">
            <textarea id="translateWrite" name="translateWrite" style="width: 100%;height: 100%;"placeholder="please write your answer..."></textarea>
        </div>
    </form>
</div>
<script type="text/javascript">
    var word_pageId = ${sessionScope.eword_pageId};
    var read_pageId = ${sessionScope.eread_pageId};
    var translate_pageId = ${sessionScope.etranslate_pageId};
    var status = 1;
    var pageId;
    $(function () {
        var m = 74;
        var s = 59;
        setInterval(function () {
            if (s < 10) {
                $('#time').html(m + ':0' + s);
            } else {
                $('#time').html(m + ':' + s);
            }
            s--;
            if (s < 0) {
                s = 59;
                m--;
            }
            if (m == 0 && s == 0) {
                Total();
            }
        }, 1000)
        $.ajax({
            type:'post',
            url:'/user/Exam/Examall.do?pageId=1&status=1',
            success:function (data) {
                $("#maindiv").html(data);
            }
        });
    });
    
   function gotopre() {
       status = status - 1;
       if (status < 1) {
           status = 1;
           pageId = word_pageId;
       } else if (status == 1) {
           pageId = word_pageId;
       } else if (status == 2) {
           pageId = read_pageId;
       } else {
           pageId = translate_pageId;
       }
       $.ajax({
           type: 'post',
           url: '/user/Exam/Examall.do?pageId=' + pageId + '&status=' + status,
           success: function (data) {
               $("#maindiv").html(data);
           }
       });
   }
    function gotonext() {
        status = (parseInt(status) + 1);
//        alert(status);
        if(status>3){
            status = 3;
            pageId = translate_pageId;
        }else if(status==2){
            pageId = read_pageId;
        }else if(status==1){
            pageId = word_pageId;
        }else {
            pageId = word_pageId;
        }
        $.ajax({
            type:'post',
            url:'/user/Exam/Examall.do?pageId='+pageId+'&status='+status,
            success:function (data) {
                $("#maindiv").html(data);
            }
        });
    }

    function Total() {
        Total_1();
    }
    function Total_1() {
        var numArr = []; // 定义一个空数组
        var txt = $('#doWordList').find(':text'); // 获取所有文本框
        for (var i = 0; i < txt.length; i++) {
            numArr.push(txt.eq(i).val()); // 将文本框的值添加到数组中
        }

        $.ajax({
            type:'post',
            url:'/user/word/doWordExam.do?word_pageId='+word_pageId+'&numArr[]='+numArr,
            success:function (data) {
                Total_2();
            }
        });
    }

    function Total_2() {
        var numArr = []; // 定义一个空数组
        var txt = $('#doReadList').find(':text'); // 获取所有文本框
        for (var i = 0; i < txt.length; i++) {
            numArr.push(txt.eq(i).val()); // 将文本框的值添加到数组中
        }

        $.ajax({
            type:'post',
            url:'/user/doReadExam.do?read_pageId='+read_pageId+'&numArr[]='+numArr,
            success:function (data) {
                submitForm();
            }
        });
    }
    function submitForm() {
        var params = $("#translateForm").serializeArray();
        $.ajax({
            type:'post',
            url:'/user/translate/TranslateDoExam.do?translate_pageId='+translate_pageId,
            data:params,
            async: false,
            success:function (data) {
                checkup();
            }
        });
    }
    function checkup() {
        window.location.href = "/user/Exam/checkExam.do";
    }
    function ExittoMain() {
        if(confirm("确定退出吗？")) {
            window.location.href = "/user/Main.jsp";
        }
    }
</script>
</body>
</html>
