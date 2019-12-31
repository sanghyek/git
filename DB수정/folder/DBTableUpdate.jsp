<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
 <head> <title>정보 관리</title></head>
 <body>
<h4>정보를 수정한 후 수정 버튼을 누르십시오.</h4>
<form action=UpdateDB.jsp method=post>
${ID} 님 변경하실 정보를 입력해주세요<br><br>
아이디:<input type=text name=code size=5 value='${ID}' readonly=true><br>
패스워드:<input type=text name=pw size=10 value='${PW}'><br>
주소:<input type=text name=addr size=10 value='${ADDR}'><br>
<input type=submit value='수정'>
</form>
 </body>
</html>
