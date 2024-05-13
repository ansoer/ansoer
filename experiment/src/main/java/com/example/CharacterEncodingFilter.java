package com.example;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CharacterEncodingFilter implements Filter {

    private String encoding;

    public void init(FilterConfig config) throws ServletException {
        // 获取配置参数，设置字符集编码
        encoding = config.getInitParameter("encoding");
    }

    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        // 强制转换请求对象为HttpServletRequest类型
        HttpServletRequest request = (HttpServletRequest) req;
        // 强制转换响应对象为HttpServletResponse类型
        HttpServletResponse response = (HttpServletResponse) res;

        // 设置请求的字符集编码
        request.setCharacterEncoding(encoding);
        // 设置响应的字符集编码
        response.setCharacterEncoding(encoding);

        // 将请求和响应对象传递给下一个Filter或Servlet
        chain.doFilter(request, response);
    }

    public void destroy() {
        // 释放资源
    }
}
