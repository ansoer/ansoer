<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 15218
  Date: 2023/11/1
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>test7</title>
</head>
<body>
<div style="width: 900px;height: 600px;margin: 0 auto">
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">题目</h2>
    <p style="color: #18be05;font-size: 20px">
        对JSTL的核心标签进行实验。set,out,foreach,if,when,otherwise,import,redirect,url,choose等</p>
    <h2 style="font-family: 'Agency FB',serif;color: #46b6b6">解答</h2>
    <div>
        <div style="border: #18be05 1px solid;margin: 10px 0">
            c:if标签的使用
            <c:if test="${empty param.username}" var="result">
                <form action="" method="post">
                    用户名：<input type="text" name="username">
                    <input type="submit" value="提交">
                </form>
            </c:if>

            <c:if test="${result!= null}">
                <p>用户名：${param.username}</p>
            </c:if>
        </div>
        <div style="border: #18be05 1px solid;margin: 10px 0">
            c:foreach标签的使用
            <%
                List<String> list = new ArrayList<>();
                list.add("JAVA");
                list.add("PHP");
                list.add("Android");
                request.setAttribute("list", list);
            %>
            <c:forEach items="${requestScope.list}" var="item">
                <p>${item}</p>
            </c:forEach>
        </div>
        <div style="border: #18be05 1px solid;margin: 10px 0">
            c:set标签的使用
            <c:set var="username" value="123"></c:set>
            <p>${username}</p>
        </div>
        <div style="border: #18be05 1px solid">
            c:out标签的使用
            <c:out value="123"></c:out>
        </div>
<%--        <div style="border: #18be05 1px solid">--%>
<%--            c:redirect标签的使用--%>
<%--            <c:redirect url="/test8/test8.jsp"></c:redirect>--%>
<%--        </div>--%>
        <div style="border: #18be05 1px solid;margin: 10px 0">
            c:url标签的使用
            <c:url value="/test8/index.jsp" var="url"></c:url>
            <a href="${url}">跳转</a>
        </div>
        <div style="border: #18be05 1px solid;margin: 10px 0">
            c:choose标签的使用
            <c:choose>
                <c:when test="${empty param.username}">
                    <form action="" method="post">
                        用户名：<input type="text" name="username">
                        <input type="submit" value="提交">
                    </form>
                </c:when>
                <c:otherwise>
                    <p>用户名：${param.username}</p>
                    <a href="/test8/index.jsp">跳转</a>
                </c:otherwise>
            </c:choose>
        </div>
        <div style="border: #18be05 1px solid;margin: 10px 0">
            c:import标签的使用
            <c:import url="/test1/index.jsp"></c:import>
        </div>
        <div style="border: #18be05 1px solid">
            c:when标签的使用
            <c:choose>
                <c:when test="${empty param.username}">
                    <form action="" method="post">
                        用户名：<input type="text" name="username">
                        <input type="submit" value="提交">
                    </form>
                </c:when>
                <c:when test="${param.username == '123'}">
                    <p>用户名：${param.username}</p>
                    <a href="/test8/index.jsp">跳转</a>
                </c:when>
                <c:otherwise>
                    <p>用户名：${param.username}</p>
                    <a href="/test8/index.jsp">跳转</a>
                </c:otherwise>
            </c:choose>
        </div>

    </div>
</div>
</body>
</html>
