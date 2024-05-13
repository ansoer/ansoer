<%--
  Created by IntelliJ IDEA.
  User: 15218
  Date: 2023/11/1
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test4</title>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/default.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js"></script>
</head>
<body>
<div style="width: 900px;height: 600px;margin: 0 auto">
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">题目</h2>
    <p style="color: #18be05;font-size: 20px">用filter完成字符集编码</p>
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">解答</h2>
    <div>
        <h1>这是一个标题</h1> <!-- 中文字符将正常显示 -->
        <p>中文字符将正常显示</p>
    </div>
    <h2 style="color: violet">核心代码:</h2>
    <pre>
        <b>
            <code contenteditable="false" class="language-这里写需要高亮的编程语言">
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


     <filter>
        <filter-name>CharacterEncodingFilter</filter-name>
        <filter-class>com.example.CharacterEncodingFilter</filter-class>
        <init-param>
            <param-name>encoding</param-name>
            <param-value>UTF-8</param-value> <!-- 设置字符集编码为UTF-8 -->
        </init-param>
    </filter>
    <filter-mapping>
        <filter-name>CharacterEncodingFilter</filter-name>
        <url-pattern>/*</url-pattern> <!-- 匹配所有请求 -->
    </filter-mapping>


            </code>
        </b>
    </pre>
</div>
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
</body>
</html>
