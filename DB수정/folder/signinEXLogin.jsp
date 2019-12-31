<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
String id=request.getParameter("idd");
String password=request.getParameter("pw_1");
String name=request.getParameter("name");
String nik=request.getParameter("nik");
session.setAttribute("ID",id);
session.setAttribute("password",password);
session.setAttribute("name",name);
%>
<html>
<head><title>로그인</title></head>
<body>
<form action="signinEXCheck.jsp" method=post>
<h2>로그인</h2>
 아이디:<input type=text name=ID><br>
 패스워드:<input type=password name=password><br>
<input type=submit value="확인">
</form>
</body>
</html>