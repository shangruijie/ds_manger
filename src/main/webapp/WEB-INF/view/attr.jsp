<%--
  Created by IntelliJ IDEA.
  User: 小山勇
  Date: 2018/10/30
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>attr</title>
    <script src="/js/jquery-1.11.3.min.js"></script>

    <script>
        $(function () {
            //通过getJson异步加载json数据
            $.getJSON("json/class_1.js",function (json) {
                $(json).each(function (i, data) {
                    $("#class1_select_id").append('<option value="'+data.id+'">'+data.flmch1+'</option>')
                })
            })
        })

        //异步加载class2和品牌
        function load_class2_tm(flbh1) {

            //加载class2
            $.getJSON("json/class_2_"+flbh1+".js",function (json) {
                //清空：empty()
                $("#class2_select_id").empty();
                $(json).each(function (i, data) {
                    $("#class2_select_id").append('<option value="'+data.id+'">'+data.flmch2+'</option>')
                })
            });
        }
    </script>
</head>
<body>
    一级：
    <select id="class1_select_id" onchange="load_class2_tm(this.value)">
        <option>请选择</option>
    </select>

    二级：
    <select id="class2_select_id" onchange="findAttrByclass2(this.value)">
        <option>请选择</option>
    </select>
    <a href="javascript:toAddAttrPage()">添加</a>
    <hr>
    <div id="attrListDiv">

    </div>
</body>
    <script>
        //跳转到spu添加页面、需要传递参数
        function toAddAttrPage(){

            var flbh2 = $("#class2_select_id").val();

            location.href="toAddAttrPage.do?flbh2="+flbh2;
        }
        
        function findAttrByclass2(flbh2) {
            $.post("findAttrByclass2.do",{"flbh2":flbh2},function(data){
                $("#attrListDiv").html(data);
            })
        }
    </script>
</html>
