<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*"%>
<%
String id=request.getParameter("ID");
String password=request.getParameter("password");
String idd=(String)session.getAttribute("ID");
String pass=(String)session.getAttribute("password");
String result=null;

if(idd.equals(id) && pass.equals(password)){
		result="SUCCESS";
	}

else{
	result="FAIL";
}
%>

<html>
<head><title>로그인체크</title></head>
<body>
<%
if(result.equals("SUCCESS"))
response.sendRedirect("signinEXLoginSuccess.jsp?RESULT="+result);
else{
	response.sendRedirect("signinEXLoginFail.jsp?RESULT="+result);
}
%>
<a href="signinEX5.jsp">로그아웃<a>
</body>
</html>