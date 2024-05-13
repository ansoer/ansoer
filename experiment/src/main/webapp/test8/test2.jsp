<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: 15218
  Date: 2023/12/13
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String[] userList = {"fengzhangjin", "bbb", "ccc"};
    String user = new String(request.getParameter("username").getBytes("ISO-8859-1"), "UTF-8");
    Arrays.sort(userList);
    int result = Arrays.binarySearch(userList, user);
    if (result > -1) {
        out.println("用户已存在");
    } else {
        out.println("用户不存在");
    }
%>
</body>
</html>
