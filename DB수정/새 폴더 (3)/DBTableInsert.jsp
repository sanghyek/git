<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">

  <title>Document</title>
 </head>
 <body>
  <h2>정보를 입력 후 입력 버튼을 누르십시오.</h2>
  <form action=InsertDB.jsp method=post>
  입력하실 정보를 입력하시오.<br><br>
  아이디:<input type=text name=id size=15><br>
  패스워드:<input type=password name=pw size=10><br>
  성명:<input type=text name=name size=10><br>
  <input type=submit value='입력'>
  </form>
 </body>
</html>
