<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">

  <title>Document</title>
 </head>
 <body>
  <h2>JavaBeans를 이용한 학생의 이름과 성적의 저장과 조회 예제</h2>
  <jsp:useBean id="score" class="javabean.StudentBean" scope="page"/>

  <hr>
  <h3>이름과 성적을 JavaBean2 StudentBean에 저장</h3><p>
  ID:<%= "zzkin1"%>,
  이름:<%= "한상혁"%>,
  숫자:<%= "55646224"%>,
  출생년도:<%= "1991"%>,
  패스워드:<%= "1234"%>,
  이메일:<%= "zzkin1@nate.com"%><p>

  
  <jsp:setProperty name="score" property="id" value="zzzkin1"/>
  <jsp:setProperty name="score" property="name" value="한상혁"/>
  <jsp:setProperty name="score" property="snum" value="55646224"/>
  <jsp:setProperty name="score" property="year" value="0223"/>
  <jsp:setProperty name="score" property="pass" value="1234"/>
  <jsp:setProperty name="score" property="email" value="zzkin1@nate.com"/>

  <hr>
  <h3>JavaBeans ScoreBean에 저장된 정보를 조회 출력</h3><p>

  ID:<jsp:getProperty name="score" property="id"/><br>
  이름:<jsp:getProperty name="score" property="name"/><br>
  숫자:<jsp:getProperty name="score" property="snum"/><br>
  출생년도:<jsp:getProperty name="score" property="year"/><br>
  패스워드:<jsp:getProperty name="score" property="pass"/><br>
  이메일:<jsp:getProperty name="score" property="email"/><br>


 </body>
</html>
