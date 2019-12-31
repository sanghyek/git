<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
 <head> <title>데이터베이스로 연결하기</title></head>
 <body>
<h3>데이터 베이스 테이블 연결 테스트</h3>
<%
String code=request.getParameter("id");
Connection conn=null;
Statement stmt=null;
try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hjy","root","911221");
if(conn == null)
	throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from new where id='"+code+"';");

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
//RequestDispatcher dispatcher=request.getRequestDispatcher("DBTableUpdate.jsp");
//RequestDispatcher dispatcher=request.getRequestDispatcher("databaseconn3.jsp");
//RequestDispatcher dispatcher=request.getRequestDispatcher("DBTableInsert.jsp");
RequestDispatcher dispatcher=request.getRequestDispatcher("DBTableDelete.jsp");

dispatcher.forward(request,response);
%>
 </body>
</html>
