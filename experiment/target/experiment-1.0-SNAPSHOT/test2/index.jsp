<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>test2</title>
</head>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/default.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js"></script>
<body>
<div style="width:900px;height: 400px;margin: 0 auto">
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">题目</h2>
    <p style="color: #18be05;font-size: 20px">使用request,session,out,application内置对象完成简单聊天室程序设计。</p>
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">解答</h2>
    <h1 style="font-family: 'Agency FB',serif;color: #46b6b6">聊天室</h1>
    <form action="chat.jsp" method="post">
        <label>
            <input style="padding: 10px" type="text" name="message" required>
        </label>
        <input type="submit" style="padding: 10px;background-color:salmon;" value="发送">
    </form>
    <p style="margin-top: 50px;font-size: 35px">聊天记录</p>
    <%
        java.util.List<String> chatHistory = (java.util.List<String>) session.getAttribute("chatHistory");
        if (chatHistory == null) {
            chatHistory = new java.util.ArrayList<>();
            session.setAttribute("chatHistory", chatHistory);
        }
    %>
    <ul>
        <% for (String message : chatHistory) { %>
        <li style="margin: 10px;font-size: 20px;list-style: none;
	padding: 0;background-color:skyblue;color: black"><%= message %>
        </li>
        <% } %>
    </ul>
</div>
<h2 style="color: violet">核心代码:</h2>
<pre>
        <b>
            <code contenteditable="false" class="language-这里写需要高亮的编程语言">
           java.util.List<String> chatHistory = (java.util.List<String>) session.getAttribute("chatHistory");
        if (chatHistory == null) {
            chatHistory = new java.util.ArrayList<>();
            session.setAttribute("chatHistory", chatHistory);
        }



         request.setCharacterEncoding("utf-8");
        String message = request.getParameter("message");
        java.util.List<String> chatHistory;
        if (message != null) {
            chatHistory = (java.util.List<String>) session.getAttribute("chatHistory");
            chatHistory.add(message);
            session.setAttribute("chatHistory", chatHistory);
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
</body>
</html>
