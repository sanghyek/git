<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.addCookie(new Cookie("NAME","john"));
response.addCookie(new Cookie("GENDER","Male"));
response.addCookie(new Cookie("AGE","15"));
%>
<html>
<head><title>쿠키 데이터 저장하기</title></head>
<body>
쿠키 데이터가 저장되었습니다<br><br>
</body>
</html>