<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">

  <title>Document</title>
 </head>
 <body>
  <h2>JavaBeans를 이용한 학생의 정보 저장과 조회 예제</h2>
  <jsp:useBean id="score" class="javabean.StudentBean" scope="page"/>

  <hr>
  <h3>이름과 성적을 JavaBean2 StudentBean에 저장</h3><p>

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
