<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
String idd=(String)session.getAttribute("ID");
%>
<html>
<head><title>회원 가입</title></head>
<body>
<h3>로그인 성공</h3>
<%
out.println(idd+"님 로그인되었습니다");
%>
<a href="signinEXLogOut.jsp">로그아웃</a>
</body>
</html>