<%--
  Created by IntelliJ IDEA.
  User: safdar
  Date: 7/26/2019
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% %>
<html>
<head>
    <title>login page</title>
</head>
<body style="text-align: center">
this is a test
<form action="midel" method="post" >
 <label>inter your username</label>
    <input type="text" name="user" value="${sessionScope.user}"><br>
    <label> inter your password</label>
    <input type="text" name="pass"><br>
    <button type="submit">login</button>

</form>
<a href="rigester.jsp"><button>rigester</button></a>
</body>
</html>
