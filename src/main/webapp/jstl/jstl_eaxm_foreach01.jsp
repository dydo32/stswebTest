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
	<!-- EL에서 사용되는 연산자 
		 == : 같다.
		 empty 변수(파라미터,어트리뷰트명) : 값의 유무를 체크
		 ! : not의 의미
		 <,<=,>,>=
		 && : and 연산자
		 || : or연산자
		 % : 사칙연산 동일 나머지를 구하기
	-->
	<h2>7단출력하기</h2>
	<c:forEach var="i" begin="2" end="9" step="1">
		<h2>7*${i}=${7*i }</h2>
	</c:forEach>
	
	<br/>
	<br/>
	<h2>1부터 100까지 홀수합을 출력 = c:set을 이용해서 더한  결과를 attribute에 저장, 더하기는 +연산자</h2>
	<c:forEach var="i" begin="1" end="100" step="1">
		<c:if test="${i%2==1 }">
			<c:set var="sum" value="${sum+i }" scope="request"/>
		</c:if>
	</c:forEach>
	<div>더한값: ${sum }</div>
	<h2>EL에서 사용하는 변수는 각 scope에 저장된 attribute명으로 생각하면 된다.</h2>
	<div>jsp로 출력하기: <%=request.getAttribute("sum") %></div>
	
	<br/>
	<br/>
	더하기ex) 
	<c:set var="i" value="30"/>
	<c:set var="test" value="${i+10 }"/>
	${test }
	${10+20 }
</body>
</html>
