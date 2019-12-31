<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
 <head> <title>정보 관리</title></head>
 <body>
<h4>회원님의 정보를 삭제하시려면 버튼을 누르십시오.</h4>
<form action=DBTabledelete.jsp method=post>
${ID} 님 회원님의 정보를 확인하세요<br>
삭제하시려면 삭제버튼을 눌러주세요<br><br>
아이디:<input type=text name=code size=5 value='${ID}' readonly=true><br>
패스워드:<input type=text name=pw size=10 value='${PW}'><br>
주소:<input type=text name=addr size=10 value='${ADDR}'><br>
<input type=submit value='삭제'>
</form>
 </body>
</html>
