<%--
  Created by IntelliJ IDEA.
  User: win8
  Date: 2017/5/4
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-sm-1" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 400px;padding: 0 0;">
    <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
        <a class="btn btn-success" onclick="Total()"><span class="glyphicon glyphicon-export"></span>交卷</a>
    </div>
    <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 10%;">
        <a class="btn btn-warning" onclick="ExittoMain()"><span class="glyphicon glyphicon-bell"></span>退出</a>
    </div>
    <div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 5%;">
        <a id="gotopre" class="btn btn-primary" onclick="gotopre()"><span class="glyphicon glyphicon-hand-down" style="font-size: 0px;"></span>上一阶段</a>
    </div>
    <%--<div class="col-sm-12" style="border: solid 1px #f7f7f7;background-color: #eaeaea;height: 120px;padding: 50% 5%;">--%>
        <%--<a id="submit" class="btn btn-success" onclick="submitForm()"><span id="aa" class="glyphicon glyphicon-hand-up" style="font-size: 0px;"></span>提交翻译</a>--%>
    <%--</div>--%>
</div><!--播放bar-->

<div  class="col-sm-10" style="border: solid 1px #f7f7f7;height:400px;padding: 0 0;">
    <div id="TranslateMain" class="col-sm-12" style="border: solid 1px #f7f7f7;width:100%;height:400px;padding: 0 0;">
        <div class="col-sm-12" style="margin-top: 20px;width:100%;height:120px;background-color: #eaeaea;padding:20px 20px; font-family:楷体;">
            ${translate.translateTitle}
        </div>
        <%--<form id="translateForm">--%>
            <%--<div class="col-sm-12"  style="height: 150px;margin-top: 20px;">--%>
                <%--<textarea id="translateWrite" name="translateWrite" style="width: 100%;height: 100%;"placeholder="please write your answer..."></textarea>--%>
            <%--</div>--%>

        <%--</form>--%>
    </div>
    <div class="col-sm-12">
        <%--分页--%>
        <div class="col-sm-9 col-sm-push-9" style="position: absolute;">
            <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                <ul id="list" class="pagination" style="margin:8px 0;">
                    <%--<li class="paginate_button previous" id="example1_previous"><a id="pre" href="#"  aria-controls="example1" data-dt-idx="0" tabindex="0" >上一页</a></li>--%>
                    <%--<li class="paginate_button next" id="example1_next"><a id="next" href="#"  aria-controls="example1" data-dt-idx="7" tabindex="0" >下一页</a></li>--%>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">


</script>