<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String id=(String)session.getAttribute("ID");
String password=(String)session.getAttribute("PW");
String addr=(String)session.getAttribute("ADDR");
%>
<html>
 <head> <title>데이터베이스로 연결하기</title></head>
 <body>
<h3>데이터 베이스 테이블 로그인 결과</h3>
${ID} 님 로그인 되셨습니다<a href="#">로그아웃</a><br><br>
아이디:${ID}<br>
패스워드:${PW}<br>
주소:${ADDR}
 </body>
</html>
