<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
 <head> <title>데이터베이스로 연결하기</title></head>
 <body>
<h3>데이터 베이스 테이블 연결 테스트</h3>
<%
String code=request.getParameter("code");
Connection conn=null;
Statement stmt=null;
try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dataex","root","123456789a");
if(conn == null)
	throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from test where id='"+code+"';");
if(rs.next()){
	String id = rs.getString("id");
	if(id.equals(code)){
	request.setAttribute("ID",id);
    RequestDispatcher dispatcher=request.getRequestDispatcher("DeletData.jsp");
    dispatcher.forward(request,response);
}
else{
	response.sendRedirect("DBDelFail.html");
}
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
