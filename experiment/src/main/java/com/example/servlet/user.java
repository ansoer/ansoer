package com.example.servlet;

import com.example.entrty.User;
import com.example.util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

@WebServlet("/test6/user")
public class user extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        String action = req.getParameter("action");
        if ("query".equals(action)) {
            try {
                this.query(req, response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void query(HttpServletRequest req, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Connection conn = DBUtil.getCon();
        String sql = "SELECT * FROM user";
        Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery(sql);
        List<User> list = new ArrayList<>();
        while (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setName(rs.getString("name"));
            user.setSex(rs.getString("sex"));
            user.setCla(rs.getString("cla"));
            user.setAddress(rs.getString("address"));
            list.add(user);
        }
        req.setAttribute("userlist", list);
        req.getRequestDispatcher("/test6/index.jsp").forward(req, response);
    }
}
