<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head><title>jsp 예제:send.jsp</title></head>
<body>
<% response.sendRedirect("http://"+request.getParameter("url"));%>
</body>
</html>