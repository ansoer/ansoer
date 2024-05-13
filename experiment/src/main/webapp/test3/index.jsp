<%--
  Created by IntelliJ IDEA.
  User: 15218
  Date: 2023/11/1
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test3</title>
</head>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/default.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js"></script>
<body>
<div style="width: 900px;height: 600px;margin: 0 auto">
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">题目</h2>
    <p style="color: #18be05;font-size: 20px">通过继承HttpServlet或实现Servlet完成用户登录。用户为jxust密码为123456.</p>
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">解答</h2>
    <div>
        <h1>Login</h1>
        <form action="login" method="post">
            <label>
                用户名：
                <input name="username"/>
            </label>
            <br/>
            <label>
                密 &nbsp 码：
                <input name="password"/>
            </label>
            <input type="submit" value="登录">
        </form>
    </div>
    <h2 style="color: violet">核心代码:</h2>
    <pre>
        <b>
            <code contenteditable="false" class="language-这里写需要高亮的编程语言">
package com.example.experiment;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/test3/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 在这里验证用户名和密码，例如查询数据库或其他验证方式
        if ("admin".equals(username) && "password".equals(password)) {
            // 登录成功，将用户信息保存到session或其他地方
            request.getSession().setAttribute("username", username);
            response.sendRedirect("login.jsp"); // 重定向到成功页面
        } else {
            // 登录失败，返回到登录页面并显示错误消息
            response.sendRedirect("err.jsp"); // 重定向到成功页面
        }
    }
}

            </code>
        </b>
    </pre>
    <script>
        hljs.initHighlightingOnLoad(); //这里调用
        function buttyForm(params) {
            hljs.initHighlightingOnLoad(); //这里调用
        }

        document.getElementById("rendered").addEventListener("blur", function (e) {
            console.log("tabbed out")
            document.querySelectorAll('pre').forEach((block) => {
                hljs.highlightBlock(block);
            })
        })
    </script>
</div>
</body>
</html>
