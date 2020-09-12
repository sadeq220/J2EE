<%--
  Created by IntelliJ IDEA.
  User: safdar
  Date: 8/2/2019
  Time: 1:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="info" class="com.newthinktank.AccountInfo" scope="session"/>
<jsp:setProperty name="info" property="*"/>

<core:if test="${info.user ne null and info.pass ne null}">
    <core:redirect url="midel"/>
</core:if>
<html>
<head>
    <title>rigester page</title>
</head>
<body>
<form action="rigester.jsp" method="post">
    <label> inter your name</label>
    <input type="text" name="user">
    <label>inter your password</label>
    <input type="text" name="pass"><br>
    <button type="submit">rigester</button>
</form>
</body>
</html>
