<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head><title></title></head>
<body>
<%
String userid=request.getParameter("userid");
String passwd=request.getParameter("passwd");
%>
<%
if(userid.equals("guest")){
	out.println("회원이 아니시군요.반갑습니다.<br>");
	out.println("다음으로 로그인하세요<hr>");
}else{
	out.println("회원님 반갑습니다.<hr>");
}
%>
아이디:<%= userid%>,암호:<%= passwd %>
</body>
</html>