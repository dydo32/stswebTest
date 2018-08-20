<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1부터 10까지 출력하기</h2>
	<c:forEach varStatus="mystatus" var="i" begin="1" end="10" step="1">
		<h2>${i }</h2>
		<div>current=>${mystatus.current }</div>
		<div>index=>${mystatus.index }</div>
		<div>first=>${mystatus.first }</div>
		<div>last=>${mystatus.last }</div>
		<div>begin=>${mystatus.begin }</div>
		<div>end=>${mystatus.end }</div>
		<div>step=>${mystatus.step }</div>
	</c:forEach>
</body>
</html>


