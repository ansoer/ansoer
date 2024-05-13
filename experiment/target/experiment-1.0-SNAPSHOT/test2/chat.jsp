<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chat Room</title>
</head>
<body>
<div style="width: 400px;height: 400px;margin: 0 auto">
    <h1 style="font-family: 'Agency FB',serif;color: #46b6b6;font-size: 50px">聊天室</h1>
    <%
        request.setCharacterEncoding("utf-8");
        String message = request.getParameter("message");
        java.util.List<String> chatHistory;
        if (message != null) {
            chatHistory = (java.util.List<String>) session.getAttribute("chatHistory");
            chatHistory.add(message);
            session.setAttribute("chatHistory", chatHistory);
        }
    %>
    <p style="margin-top: 50px;font-size: 35px">你发送的信息: <%=message%>
    </p>
    <p style="margin-top: 50px;font-size: 35px">聊天记录</p>
    <%
        chatHistory = (java.util.List<String>) session.getAttribute("chatHistory");
    %>
    <ul>
        <% for (String chat : chatHistory) { %>
        <li style="margin: 10px;font-size: 20px;list-style: none;
	padding: 8px;background-color:skyblue;color: black"><%=chat%>
        </li>
        <% } %>
    </ul>
</div>

</body>
</html>
