<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String code=request.getParameter("code");
String pw=request.getParameter("pw");
String addr=request.getParameter("addr");
if(code == null||pw == null||addr == null)
	throw new Exception("누락된 데이터가 있습니다");
Connection conn=null; 
Statement stmt=null;
try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dataex","root","123456789a");
if(conn == null)
	throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
stmt=conn.createStatement();
String command = String.format("update test set "+
"pw:='%s',addr:='%s'"+" where id='%s';",pw,addr,code);
int rowNum = stmt.executeUpdate(command);
if(rowNum<1)
	throw new Exception("데이터를 DB에 입력할수 없습니다.");
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