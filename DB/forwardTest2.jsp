<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head><title></title></head>
<body>
<h2>포워드된 페이지</h2>
<table>
<tr>
<td>이름</td>
<td><%= request.getParameter("name")%></td>
</tr>
<tr>
<td>나이</td>
<td><%= request.getParameter("age")%></td>
</tr>
<tr>
<td>주소</td>
<td><%= request.getParameter("address")%></td>
</tr>
<tr>
<td>전화번호</td>
<td><%= request.getParameter("tel")%></td>
</tr>
</table>
</body>
</html>