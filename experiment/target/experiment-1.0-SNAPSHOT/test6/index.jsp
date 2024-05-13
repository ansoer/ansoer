<%--
  Created by IntelliJ IDEA.
  User: 15218
  Date: 2023/11/1
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>test6</title>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/default.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/highlight.min.js"></script>
</head>
<body>
<div style="width: 900px;height: 600px;margin: 0 auto">
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">题目</h2>
    <p style="color: #18be05;font-size: 20px">
        在servlet中完成对mysql数据库的使用，要求建立users表，查询出使用用户并展示。</p>
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">解答</h2>
    <div>
        <table border="0" cellpadding="0" cellspacing="1">
            <tr>
                <td>用户</td>
            </tr>
            <tr>
                <td>id</td>
                <td>姓名</td>
                <td>性别</td>
                <td>班级</td>
                <td>地址</td>
            </tr>
            <c:forEach var="user" items="${requestScope.userlist}">
                <tr>
                    <td>
                        <c:out value="${user.id}"/>
                    </td>
                    <td>
                        <c:out value="${user.name}"/>
                    </td>
                    <td>
                        <c:out value="${user.sex}"/>
                    </td>
                    <td>
                        <c:out value="${user.cla}"/>
                    </td>
                    <td>
                        <c:out value="${user.address}"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <h2 style="color: violet">核心代码:</h2>
        <pre>
        <b>
            <code contenteditable="false" class="language-这里写需要高亮的编程语言">
                   public void query(HttpServletRequest req, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Connection conn = DBUtil.getCon();
        String sql = "SELECT * FROM user";
        Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery(sql);
        List<User> list = new ArrayList<>();
        while (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setName(rs.getString("name"));
            user.setSex(rs.getString("sex"));
            user.setCla(rs.getString("cla"));
            user.setAddress(rs.getString("address"));
            list.add(user);
        }
        req.setAttribute("userlist", list);
        req.getRequestDispatcher("/test6/index.jsp").forward(req, response);
    }
            </code>
        </b>
    </pre>
    </div>
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
