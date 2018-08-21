<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
	<h1>컬렉션에 저장된 데이터를 액세스</h1>
	- 주로 jsp에서 하는 일은 컨트롤러에서 공유된 attribute에서 데이터를 꺼내서 출력하기
	- items변수를 이용
	<h2>1. 배열데이터</h2>
	<%String[] arr = {"java","jsp","servlet","spring"};%>
	<c:forEach var="i" items="<%=arr %>">
		<h3>${i }</h3>
	</c:forEach>
	
	<h2>2. ArrayList</h2>
	<%
		ArrayList<String> list = new ArrayList<String>();
		list.add("하둡");
		list.add("mongodb");
		list.add("flume");
		list.add("spark");
		request.setAttribute("list", list);
	%>
	<c:forEach varStatus="mystatus" var="data" items="${list }">
		<h3>${data }</h3>
		<div>current=>${mystatus.current }</div>
		<div>index=>${mystatus.index }</div>	
	</c:forEach>
	<h3>=> data변수에 저장된 데이터를 ArrayList에 어떤 타입의 데이터가 저장되어 있냐에 따라 달라진다.
		지금같은 경우는 data변수에는 String이 저장
		만약에 dto가 저장된 경우 data.변수명(getter메소드의 get빼고 첫 글자를 소문자로 바꾼 이름)으로 접근
	</h3>
	
	<h2>3. map</h2>
	<%
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("a", "python");
		map.put("b", "sqoop");
		map.put("c", "node.js");
		map.put("d", "express");
		map.put("e", "react");
	%>
	<c:forEach var="mapdata" items="<%=map %>">
		<h3>${mapdata.key }:${mapdata.value }</h3>
	</c:forEach>
</body>
</html>