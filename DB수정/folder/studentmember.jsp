<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javabean.StudentBean"%>
<%@ page import="java.util.ArrayList" %>
<!doctype html>
<style>
th{
background:yellow;
}
</style>
<html lang="en">
 <head>
  <meta charset="UTF-8">

  <title>Document</title>
 </head>
 <body>
  <h2>표현언어에서 자바빈즈 getter 호출</h2>

<jsp:useBean id="stu" class="javabean.Student" scope="page">
<table border="solid 1px black ">
<th width=100 align=center>이름</th><th width=100 align=center>ID</th>
<th width=100 align=center>pw</th><th width=100 align=center>수험번호</th>
<th width=150 align=center>이메일</th></tr>
<%
ArrayList<StudentBean> list=stu.input();

for(int i=0; i<list.size(); i++){
	out.println("<tr>"+"<td width=100 align=center>"+list.get(i).getName()+"</td>");
	out.println("<td width=100 align=center>"+list.get(i).getId()+"</td>");
	out.println("<td width=100 align=center>"+list.get(i).getPass()+"</td>");
	out.println("<td width=100 align=center>"+list.get(i).getSnum()+"</td>");
	out.println("<td width=150 align=center>"+list.get(i).getEmail()+"</td>"+"<tr>");
}
%>
</table>
</jsp:useBean>


 </body>
</html>
