<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//request.setAttribute("name", "request scope에 저장된 객체"); 
		session.setAttribute("name", "session scope에 저장된 객체");
		application.setAttribute("name", "application scope에 저장된 객체");
	%>
	1. requestScope에 저장된 attribute접근<br/><br/>
	- ${requestScope.name } <br/><br/>
	
	2. sessionScope에 저장된 attribute접근<br/><br/>
	- ${sessionScope.name } <br/><br/>
	
	3. applicationScope에 저장된 attribute접근<br/><br/>
	- ${applicationScope.name } <br/><br/>
	
	4. pageScope에 저장된 attribute접근<br/><br/>
	- ${pageScope.name } <br/><br/>
	
	<br/><br/>
	${name }
	
</body>
</html>