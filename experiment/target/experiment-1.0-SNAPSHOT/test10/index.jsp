<%--
  Created by IntelliJ IDEA.
  User: 15218
  Date: 2023/12/13
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test10</title>
</head>
<body>

<div style="width: 900px;height: 600px;margin: 0 auto">
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">题目</h2>
    <p style="color: #18be05;font-size: 20px">
        EL表达式的使用
    </p>
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">解答</h2>
    <div>
        <div style="border: #18be05 1px solid;margin: 10px 0">
            EL表达式的使用
            <p>${100+2}</p>
            <p>${100-2}</p>
            <p>${100*2}</p>
            <p>${100/2}</p>
            <p>${100%2}</p>
            <p>${100==2}</p>
        </div>
        <div style="border: #18be05 1px solid;margin: 10px 0">
            EL表达式的使用
            <p>${'100'}</p>
            <p>${'100' eq '100'}</p>
            <p>${'100' ne '100'}</p>
            <p>${'100' gt '100'}</p>
        </div>

    </div>
</div>
</body>
</html>
