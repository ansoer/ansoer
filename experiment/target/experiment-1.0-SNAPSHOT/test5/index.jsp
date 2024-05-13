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
    <title>test5</title>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/default.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js"></script>
</head>
<body>
<div style="width: 900px;height: 600px;margin: 0 auto">
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">题目</h2>
    <p style="color: #18be05;font-size: 20px">通过监听Session完成实时在线人数的统计。</p>
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">解答</h2>
    <div>
        <button onclick="location.href='/online'">点击查看当前在线人数：</button>
    </div>
    <h2 style="color: violet">核心代码:</h2>
    <pre>
        <b>
            <code contenteditable="false" class="language-这里写需要高亮的编程语言">
                @WebServlet("/online")
public class OnlineServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (req.getParameter("key") != null && req.getParameter("key").equals("logout")) {
            session.invalidate();
            return;
        }
        Integer num = (Integer) session.getServletContext().getAttribute("onlineCount");
        res.setContentType("text/html;charset=utf-8");
        res.getWriter().write("<h2>当前在线人数：" + num + "</h2> <a href='online?key=logout'>退出</a>");
    }
}
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
