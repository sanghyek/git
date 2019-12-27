<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>Document</title>
 </head>
 <body>
  <% int i=24;%>
  <% out.println("하루는"+i+"시간이며,<br>");
  out.println("하루는"+i*60+"분 입니다.<br>");%>

  <% int total=0; 
  for (int cnt=1; cnt<=100; cnt++)
  total+=cnt; %>
  1부터 100까지 더한값은?<%= total%>
 </body>
</html>
