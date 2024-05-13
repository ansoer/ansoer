package com.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/online")
public class  OnlineServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
        HttpSession session = req.getSession();
        if (req.getParameter("key")!= null && req.getParameter("key").equals("logout")) {
            session.invalidate();
            res.sendRedirect(req.getContextPath() + "/test9/index.jsp");
            return;
        }
        Integer num = (Integer) session.getServletContext().getAttribute("onlineCount");
        res.setContentType("text/html;charset=utf-8");
        res.getWriter().write("<h2>当前在线人数：" + num + "</h2> <a href='online?key=logout'>退出</a>");
    }
}
