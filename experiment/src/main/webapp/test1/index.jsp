<%--
  Created by IntelliJ IDEA.
  User: 15218
  Date: 2023/11/1
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test1</title>
</head>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/default.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js"></script>

<body>
<div style="width: 900px;height: 600px;margin: 0 auto">
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">题目</h2>
    <p style="color: #18be05;font-size: 20px">使用JSP完成100以内奇数的和，求和的方法要在声明内完成。</p>
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">解答</h2>
    <div>
        <%
            int sum = 0;
            for (int i = 1; i <= 100; i += 2) {
                sum += i;
            }
        %>
        <h1>100以内奇数的和为: <%= sum %>
    </div>
    <h2 style="color: violet">核心代码:</h2>
    <pre>
        <b>
            <code contenteditable="false" class="language-这里写需要高亮的编程语言">
            int sum = 0;
            for (int i = 1; i <= 100; i += 2) {
                sum += i;
            }
            100以内奇数的和为: <%= sum %>
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
