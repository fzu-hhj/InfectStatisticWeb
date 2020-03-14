<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	out.print("index");
	String flag = "iniTime";
	request.setAttribute("flag", flag);
	request.getRequestDispatcher("mapServlet").forward(request, response);
%>
	
	
</body>
</html>