<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<body>
2^1=<%= power(2,1)%><br>
2^2=<%= power(2,2)%><br>
2^3=<%= power(2,3)%><br>
2^4=<%= power(2,4)%><br>
2^5=<%= power(2,5)%><br>

<% String []str={"감사합니다.","Thank you."};%>
한국어로[<%=str[0]%>]는 <br>
영어로 [<%= str[1]%>]이다.

</body>
</html>
<%!  //%! 는 선언문
private int power(int base,int exponent){
	int result=1;
	for (int cnt=0; cnt<exponent; cnt++)
		result*=base;
	return result;
}
%>