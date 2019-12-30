<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head><title></title></head>
<body>
<jsp:forward page='<%= request.getParameter("forwardPage")%>'>
<jsp:param name="tel" value="010-5564-6224"/>
</jsp:forward>
</body>
</html>