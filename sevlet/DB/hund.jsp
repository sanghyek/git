<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
int sum=0;
for (int cnt=1; cnt<=100; cnt++)
sum += cnt;
request.setAttribute("RESULT",new Integer(sum));
%>
<html>
<head><title>1부터 100까지의 합</title></head>
<body>
페이지의 주도권이 넘어가는 링크
<jsp:forward page="HundredResult.jsp"/>
</body>
</html>
