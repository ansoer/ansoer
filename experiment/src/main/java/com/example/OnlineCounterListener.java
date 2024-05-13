package com.example;

import javax.servlet.annotation.WebListener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class OnlineCounterListener implements HttpSessionListener {
    private Integer onlineCount = 0;

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        onlineCount++;
//        se.getSession().setAttribute("onlineCount", onlineCount);
        se.getSession().getServletContext().setAttribute("onlineCount", onlineCount);
    }
    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        onlineCount--;
//        se.getSession().setAttribute("onlineCount", onlineCount);
        se.getSession().getServletContext().setAttribute("onlineCount", onlineCount);

    }
}
