<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>Document</title>
 </head>
 <body>
 <%
request.setCharacterEncoding("UTF-8");
String namea = request.getParameter("namea");
String chk_male = request.getParameter("chk_male");
String year = request.getParameter("year");
String month = request.getParameter("month");
String day = request.getParameter("day");
String phone_1 = request.getParameter("phone_1");
String phone_2 = request.getParameter("phone_2");
String phone_3 = request.getParameter("phone_3");
String phone_4 = request.getParameter("phone_4");
String email = request.getParameter("email");
String email_dns = request.getParameter("email_dns");
String addr = request.getParameter("addr");
String addr1 = request.getParameter("addr1");
String addr2 = request.getParameter("addr2");
String idd = request.getParameter("idd");
String nik = request.getParameter("nik");
String pw_1 = request.getParameter("pw_1");
String pwhint = request.getParameter("pwhint");
String pwqa = request.getParameter("pwqa");
String chk_mail = request.getParameter("chk_mail");
String chk_sms = request.getParameter("chk_sms");
%>

이름:<%= namea%><p>
성별:<%= chk_male%><p>
생년월일:<%= year%> <%= month%> <%= day%><p>
휴대폰번호:<%= phone_1%> <%= phone_2%>-<%= phone_3%>-<%= phone_4%><p>
이메일:<%= email%>@<%= email_dns%><p>
주소:<%= addr%> <%= addr1%> <%= addr2%><p>
ID:<%= idd%><p>
닉네임:<%= nik%><p>
PW:<%= pw_1%><p>
비밀번호힌트:<%= pwhint%><p>
비밀번호힌트답변:<%= pwqa%><p>
이메일수신동의:<%= chk_mail%><p>
sms수신동의:<%= chk_sms%><p>

 </body>
</html>
