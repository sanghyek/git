<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String code=request.getParameter("id");
String pw=request.getParameter("pw");
String name=request.getParameter("name");

Connection conn=null; 
Statement stmt=null;
try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hjy","root","911221");
if(conn == null)
	throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
stmt=conn.createStatement();
String command = String.format("update new set "+ "pw:='%s',name:='%s'"+" where id='%s';",pw,name,code);
int rowNum = stmt.executeUpdate(command);
if(rowNum<1)
	throw new Exception("데이터를 DB에 입력할 수 없습니다.");
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
response.sendRedirect("UpdateRead.jsp?id="+code);
%>