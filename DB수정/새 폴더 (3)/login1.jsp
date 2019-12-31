<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
 <head> <title>로그인</title></head>
 <body>
<h3>로그인</h3>
<%
String code=request.getParameter("id");
String pw=request.getParameter("pw");
Connection conn=null;
Statement stmt=null;
try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hjy","root","911221");
if(conn == null)
	throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from new where id='"+code+"'and pw='"+pw+"';");

if(rs.next()){
	String id = rs.getString("id");
	String pw = rs.getString("pw");
	String name = rs.getString("name");
	request.setAttribute("ID",id);
	request.setAttribute("PW",pw);
	request.setAttribute("NAME",name);
}
}finally{
	try{
		stmt.close();
	}catch(Exception ignored){
	}
	try{
		conn.close();
	}catch(Exception ignored){
	}
}

RequestDispatcher dispatcher=request.getRequestDispatcher("DBTablelogin.jsp");

dispatcher.forward(request,response);
%>
 </body>
</html>
