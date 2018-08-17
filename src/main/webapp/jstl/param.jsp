<%@page import="jstl.MyDTO"%>
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
	MyDTO dto = new MyDTO("홍길동","100");
	request.setAttribute("dto", dto);
 %>
	이름: ${param.name }<br/>
	나이: ${param.age }<br/>
	사용중인 소프트웨어:${paramValues.sw[0]}<br/>
	사용중인 소프트웨어:${paramValues.sw[1]}<br/>
	사용중인 소프트웨어:${paramValues.sw[2]}<br/>
	
	<br/><br/>
	사용자명: ${dto.name}<br/>
	사용자나이: ${dto.age}<br/>
</body>
</html>