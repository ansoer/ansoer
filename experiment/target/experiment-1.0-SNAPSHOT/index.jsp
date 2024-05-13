<%--
  Created by IntelliJ IDEA.
  User: 15218
  Date: 2023/11/1
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实验</title>
</head>
<style>
    li {
        margin: 10px;
        font-size: 20px;
        list-style: none;
        padding: 0;
        background-color: skyblue;
        color: black
    }

    button {
        padding: 10px;
        background-color: khaki;
    }
</style>
<body>
<div style="width: 600px;height: 600px;margin: 0 auto">
    <h2 style="font-size: 20px;color: red">章节</h2>
    <ul>
        <li>
            <button onclick="window.location.href='test1'">JSPWEB环境配置运行</button>
        </li>
        <li>
            <button onclick="window.location.href='test2'">JSP内置对象使用聊天室</button>
        </li>
        <li>
            <button onclick="window.location.href='test3'">使用servlet完成登录</button>
        </li>
        <li>
            <button onclick="window.location.href='test4'">使用filter完成字符集编码</button>
        </li>
        <li>
            <button onclick="window.location.href='test5'">listener使用</button>
        </li>
        <li>
            <button onclick="window.location.href='test6/front.jsp'">Servlet数据库调用</button>
        </li>
        <li>
            <button onclick="window.location.href='test7'">JSTL核心标签使用</button>
        </li>
        <li>
            <button onclick="window.location.href='test8'">使用Ajax完成页面调用</button>
        </li>
        <li>
            <button onclick="window.location.href='test9'">session内置对象实验</button>
        </li>
        <li>
            <button onclick="window.location.href='test10'">EL表达式</button>
        </li>
    </ul>
</div>
</body>
</html>
