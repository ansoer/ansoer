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
    <title>test8</title>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/default.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js"></script>
    <style>
        #toolTip {
            position: absolute;
            left: 361px;
            top: 39px;
            width: 100px;
            height: 48px;
            padding-top: 45px;
            padding-left: 20px;
            padding-right: 25px;
            color:black;
            background-color: white;
            display: none;
            z-index: 1000;
        }
    </style>
</head>
<body>
<div style="width: 900px;height: 600px;margin: 0 auto">
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">题目</h2>
    <p style="color: #18be05;font-size: 20px">使用XMLHttpRequest对象完成异步调用。</p>
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">解答</h2>
    <div>
        <form action="" name="form1" method="post">
            <ul>
                <li>
                    <input type="text" name="username" size="20" id="username">
                </li>
                <img src="" alt="" width="100" height="100" onclick="checkUser(form1.username)">
            </ul>
            <div id="toolTip"></div>
        </form>
        <h2 style="color: violet">核心代码:</h2>
        <pre>
        <b>
            <code contenteditable="false" class="language-这里写需要高亮的编程语言">
                       function CreatRequest(url) {
        http_request = false;
        if (window.XMLHttpRequest) {
            http_request = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            try {
                http_request = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
                try {
                    http_request = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {
                }
            }
        }
        if (!http_request) {
            alert("Your browser does not support AJAX!");
            return false;
        }
        http_request.onreadystatechange = getResult;
        http_request.open("GET", url, true);
        http_request.send(null);
    }

    function getResult() {
        if (http_request.readyState == 4) {
            if (http_request.status == 200) {
                document.getElementById("toolTip").innerHTML = http_request.responseText;
                document.getElementById("toolTip").style.display = "block";

            } else {
                alert("There was a problem retrieving the data:\n" + http_request.statusText);
            }
        }
    }

    function checkUser(username) {
        if (username.value == "") {
            username.focus();
            alert("用户名不能为空");
        } else {
            CreatRequest('test2.jsp?username=' + encodeURIComponent(username.value));
        }
    }
            </code>
        </b>
    </pre>
    </div>
</div>
</body>
<script type="text/javascript">
    function CreatRequest(url) {
        http_request = false;
        if (window.XMLHttpRequest) {
            http_request = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            try {
                http_request = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
                try {
                    http_request = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {
                }
            }
        }
        if (!http_request) {
            alert("Your browser does not support AJAX!");
            return false;
        }
        http_request.onreadystatechange = getResult;
        http_request.open("GET", url, true);
        http_request.send(null);
    }

    function getResult() {
        if (http_request.readyState == 4) {
            if (http_request.status == 200) {
                document.getElementById("toolTip").innerHTML = http_request.responseText;
                document.getElementById("toolTip").style.display = "block";

            } else {
                alert("There was a problem retrieving the data:\n" + http_request.statusText);
            }
        }
    }

    function checkUser(username) {
        if (username.value == "") {
            username.focus();
            alert("用户名不能为空");
        } else {
            CreatRequest('test2.jsp?username=' + encodeURIComponent(username.value));
        }
    }
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
</html>
