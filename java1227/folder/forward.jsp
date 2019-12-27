<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head><title>jsp 예제:forward.jsp</title></head>
<body>
<!--  
 <% 
 //pageContext.forward("send.jsp");
 %>
 forward태그 사용은 같으나 형태가 jsp 
-->
<jsp:forward page="send.jsp"/>
</body>
</html>