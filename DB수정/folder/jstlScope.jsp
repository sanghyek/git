<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<html>
<head><title></title></head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="str" value="Hello set Tag!!!" scope="session"/>
\${str}=${str}<br>
\${sessionScope.str}=${sessionScope.str}<br><br>

<c:remove var="str" scope="page"/>
\${str}=${str}<br><br>

<c:remove var="str" scope="session"/>
\${str}=${str}<br><br>

<c:set var="app" value="응용프로그램변수" scope="application"/>
\${app}=${app}<br><br>

<c:remove var="app"/>
\${app}=${app}

</body>
</html>