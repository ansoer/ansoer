package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Random;

@WebServlet("/test9/RandomNumberGenerator")
public class RandomNumberGeneratorServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 生成随机数  
        int randomNumber = new Random().nextInt(100) + 1;
        request.setAttribute("randomNumber", randomNumber);
        request.getRequestDispatcher("/test9/index.jsp").forward(request, response);
    }
}