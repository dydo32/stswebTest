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
	<h2>c:choose가 if~else if ~ else의 의미</h2>
	<h3>20세 미만: XXXX님 청소년입니다., 20세 이상 XXX님은 성인입니다.</h3>
	<h3>name과 age가 모두 입력된 경우에만, c:if 중첩해서사용</h3>
	if문 else if => c:when
	else => c:otherwise
	<c:if test="${!empty param.name && !empty param.age }">
		<c:choose>
			<c:when test="${param.age<20 }">
				<h3>${param.name }님은 청소년입니다.</h3>
			</c:when>
			<c:otherwise>
				<h3>${param.name }님은 성인입니다.</h3>
			</c:otherwise>	
		</c:choose>
	</c:if>
</body>
</html> 