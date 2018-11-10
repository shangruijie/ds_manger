<%--
  Created by IntelliJ IDEA.
  User: 小山勇
  Date: 2018/10/29
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>spu-add</title>
</head>
<body>

    <hr>
    flbh1:${spu.flbh1}--
    flbh2:${spu.flbh2}--
    ppId:${spu.ppId}
    <hr>

    <form action="/addSpu.do" method="post" enctype="multipart/form-data">

        <input type="hidden" name="flbh1" value="${spu.flbh1}">
        <input type="hidden" name="flbh2" value="${spu.flbh2}">
        <input type="hidden" name="ppId" value="${spu.ppId}">

        商品名称：<input type="text" name="shpMch"/><br>
        商品描述：<textarea name="shpMsh"></textarea><br>
        图片：<input type="file" name="imgs"/>
              <input type="file" name="imgs"/>
              <input type="file" name="imgs"/><br>

        <input type="submit"/>
    </form>
</body>
</html>
