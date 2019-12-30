<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>Document</title>
 </head>
 <body>
  <jsp:useBean id="std" class="javabean.StudentBean">
	<jsp:setProperty name="std" property="id" value="ga"/>
	<jsp:setProperty name="std" property="name" value="na"/>
	<jsp:setProperty name="std" property="snum" value="da"/>
	<jsp:setProperty name="std" property="year" value="ra"/>
	<jsp:setProperty name="std" property="pass" value="ma"/>
	<jsp:setProperty name="std" property="email" value="ba"/>
	</jsp:useBean>


 </body>
</html>
