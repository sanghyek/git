<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
 <head> <title>데이터베이스로 연결하기</title></head>
 <body>
<h3>데이터 베이스 로그인연결</h3>
<%
String code=request.getParameter("code");
String pass=request.getParameter("pw");
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
	String pw = rs.getString("pw");
	String addr = rs.getString("addr");
	if(id.equals(code)&&pw.equals(pass)){
	session.setAttribute("ID",id);
    session.setAttribute("PW",pw);
    session.setAttribute("ADDR",addr);
	RequestDispatcher dispatcher=request.getRequestDispatcher("DBlogsuc.jsp");
    dispatcher.forward(request,response);

	}
	else{
		out.print("가입정보가 다릅니다");
		out.print("<a href='DBlogin.html'>로그인</a>");
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
