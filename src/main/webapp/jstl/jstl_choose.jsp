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
	<h2>c:choose가 if~else if ~ else의 의미</h2>
	<h3>20세 미만: XXXX님 청소년입니다., 20세 이상 XXX님은 성인입니다.</h3>
	if문 else if => c:when
	else => c:otherwise
	<c:choose>
		<c:when test="${param.age<20 }">
			<h3>${param.name }님은 청소년입니다.</h3>
		</c:when>
		<c:otherwise>
			<h3>${param.name }님은 성인입니다.</h3>
		</c:otherwise>
	</c:choose>
</body>
</html>