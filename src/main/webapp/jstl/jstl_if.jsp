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
	<!-- 
		JSTL(커스텀태그라이브러리)
		- core : 일반적으로 jsp에서 많이 사용하는 문법을 태그로 표현	 (prefix: c)
		- formatting : 숫자, 날짜 ,시간들을 포맷팅하는 기능을 제공   (prefix: fmt)
		- DataBase : 디비관련(prefix:sql)
		- XMl : xml문서를 처리할 때 사용(prefix:x)
		- Function : 문자열을 제공하는 함수 (prefic: fn)
	 -->
	<!-- EL에서 사용되는 연산자 
	 	== : 같다.
	 	empty 변수(파라미터,어트리뷰트명) : 값의 유무를 체크
	 	! : not의 의미
	 	<,<=,>,>=
	 -->
	<h3>JSTL c:if의 사용 - 자바의 if문과 비슷(true인 경우만 체크)<br /> 
		1. 전송된 파라미터의 name이 홍길동이면 "홍길동님 환영합니다."라는 메시지 출력</h3>
	조건은 EL로 정의한다. JSTL은 대부분 EL을 이용해서 조건식 같은 표현을 처리한다. test속성이 조건을 정의하는 속성
	<c:if test="${param.name=='홍길동'}">
		<h3>${param.name }님환영합니다.</h3>
	</c:if>
	<h3>2. name이 입력된 경우 "name님 환영합니다." 출력하기</h3>
	empty 연산자를 이용해서 값의 유무를 체크
	<c:if test="${!empty param.name}">
		<h3>${param.name }님환영합니다.</h3>
	</c:if>
	<h3>3. state변수를 선언하고 age를 이용해서 성인, 청소년 출력하기</h3>
	c:set은 변수를 정의한다. var는 변수명 value는 값 scope속성
	page|request|session|application => 각 scope에 attribute로 저장 
	ex) scope속성을 request로 지정하면 request.setAttribute("state","성인")과 동일
	<c:set var="state" value="성인" scope="request" />
	<c:if test="${param.age<20 }">
		<c:set var="state" value="청소년" scope="request" />
	</c:if>
	<h3>state의 값:${state }</h3>
</body>
</html>