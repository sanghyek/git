<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
 <head> <title>데이터베이스로 연결하기</title></head>
 <body>
<h3>데이터 베이스 전체 정보 불러오기</h3>
<%
Connection conn=null;
Statement stmt=null;
try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dataex","root","123456789a");
if(conn == null)
	throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from test;");
while(rs.next()){	
   rs.getString("id")
   rs.getString("pw")
   rs.getString("addr")
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
%>
 </body>
</html>
