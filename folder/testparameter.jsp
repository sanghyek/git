<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Enumeration"%>
<% request.setCharacterEncoding("EUC-kr");%>
</html>
<body>
<h2>��̿� ������ ���� ���� ���</h2>
<%
//Enumeration e=request.getParameterName();
Enumeration<String> e=request.getParameterNames();
while(e.hasMoreElements()){
	//String name=(String)e.nextElement();
	String name=e.nextElement();
	String[]data= request.getParameterValues(name);
	if(data!=null){
		for(String eachdata:data)
			out.println(eachdata+"");
	}
	out.println("<p>");
}
%>
</body>
</html>