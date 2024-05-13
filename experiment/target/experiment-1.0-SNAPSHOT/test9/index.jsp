<%@ page import="java.util.List" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Random" %>
<%--
  Created by IntelliJ IDEA.
  User: 15218
  Date: 2023/11/1
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test9</title>
</head>
<body>
<div style="width: 900px;height: 600px;margin: 0 auto">
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">题目</h2>
    <p style="color: #18be05;font-size: 20px">
        当用户第一次进入系统时为该用户随机生成了一个整数，用户通过页面提交来猜测数字，结果会显示大于该数字，
        小于该数字，直至猜中，猜中后列出每次猜的数字及时间列表，点击重新开启销毁本次会话重复前面过程。
    </p>
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">解答</h2>
    <div>
        <form method="get" action="">
            <input type="text" name="number" placeholder="Enter your guess">
            <input type="submit" value="Submit">
        </form>
        <%--        <a href="restartGame">Restart Game</a>--%>
        <%
            if (session == null) {
                System.out.println("22222222");
                Random random = new Random();
                Integer initNum = random.nextInt(100);
                System.out.println(initNum);
                session.setAttribute("random", initNum);
                out.print("生成随机数完成");
            } else {
                System.out.println("33333333");
                String gessnum = request.getParameter("number");
                if (gessnum == null) {
                    out.print("请输入数字");
                } else {
                    Integer temp = 12;
                    if (Integer.parseInt(gessnum) > temp) {
                        out.print("猜大了");
                        session.setAttribute(gessnum, System.currentTimeMillis());
                    } else if (Integer.parseInt(gessnum) < temp) {
                        out.print("猜小了");
                        session.setAttribute(gessnum, System.currentTimeMillis());
                    } else {
                        out.print("猜对了<br/>");
                        Enumeration<String> list = session.getAttributeNames();
                        while (list.hasMoreElements()) {
                            String key = (String) list.nextElement();
                            out.print("数字：" + key + "，时间：" + session.getAttribute(key));
                            out.print("<br/>");
                        }
                        session.invalidate();
                    }
                }
            }
        %>
    </div>
</div>
</body>
</html>
