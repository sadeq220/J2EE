<%--
  Created by IntelliJ IDEA.
  User: safdar
  Date: 7/26/2019
  Time: 9:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<jsp:useBean id="info" class="com.newthinktank.AccountInfo" scope="session"/>--%>
<%-- if(!(request.getParameter("user").equals("go")))
    response.sendRedirect("login.jsp");--%>

 <%--<jsp:getProperty name="info" property="user"/> --%>
<html>
<head>
    <title>welcome</title>
</head>
<body>
<h3>WELCOME USER ${sessionScope.info.user}</h3>

</body>
</html>
