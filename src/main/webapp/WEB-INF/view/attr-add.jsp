<%--
  Created by IntelliJ IDEA.
  User: 小山勇
  Date: 2018/10/30
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>attr-add</title>
</head>
<body>
    <form action="/saveAttr.do" method="post">
        <input type="hidden" name="flbh2" value="${flbh2}">

        <table border="1">
            <tr>
                <td>属性名:<input type="text" name="attrList[0].shxmMch"/></td>
                <td></td>
                <td><a href="">添加属性值</a></td>
            </tr>
            <tr>
                <td>属性值:<input type="text" name="attrList[0].valueList[0].shxzh"/></td>
                <td>单位:<input type="text" name="attrList[0].valueList[0].shxzhMch"/></td>
                <td><a href="">删除</a></td>
            </tr>
            <tr>
                <td>属性值:<input type="text" name="attrList[0].valueList[1].shxzh"/></td>
                <td>单位:<input type="text" name="attrList[0].valueList[1].shxzhMch"/></td>
                <td><a href="">删除</a></td>
            </tr>
        </table>
        <table border="1">
            <tr>
                <td>属性名:<input type="text" name="attrList[1].shxmMch"/></td>
                <td></td>
                <td><a href="">添加属性值</a></td>
            </tr>
            <tr>
                <td>属性值:<input type="text" name="attrList[1].valueList[0].shxzh"/></td>
                <td>单位:<input type="text" name="attrList[1].valueList[0].shxzhMch"/></td>
                <td><a href="">删除</a></td>
            </tr>
            <tr>
                <td>属性值:<input type="text" name="attrList[1].valueList[1].shxzh"/></td>
                <td>单位:<input type="text" name="attrList[1].valueList[1].shxzhMch"/></td>
                <td><a href="">删除</a></td>
            </tr>
        </table>
        <input type="submit">
    </form>
</body>
</html>
