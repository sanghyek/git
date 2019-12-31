<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
 <head> <title>정보 관리</title></head>
 <body>
<h4>정보를 입력한 후 삭제 버튼을 누르십시오.</h4>
<form action=DeleteDB.jsp method=post>
삭제하실 정보를 입력해주세요<br><br>
아이디:<input type=text name=id size=15 ><br>
패스워드:<input type=text name=pw size=10><br>

<input type=submit value='삭제'>
</form>
 </body>
</html>
