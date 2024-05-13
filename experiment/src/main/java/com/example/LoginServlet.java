package com.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
