<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> client data 처리 연습 </h2>

	<!-- <form method='post'  action='/stswebTest/jstl/param.jsp'> -->
	<!-- <form method='post'  action='/stswebTest/jstl/jstl_if.jsp'> -->
	<!-- <form method='post'  action='/stswebTest/jstl/jstl_choose.jsp'> -->
		<form method='post'  action='/stswebTest/jstl/jstl_exam01.jsp'>
		이름<input type='text' name='name'><br>
		나이<input type='text' name='age'><br><p>

		다음중 현재사용중인 소프트웨어를 선택하여 주세요<br>
		<input type='checkbox' name='sw' value='hwp'>hwp<br>
		<input type='checkbox' name='sw' value='MS/WORD'>MS/WORD<br>
		<input type='checkbox' name='sw' value='EXCEL'>EXCEL<br><p>

		<input type='submit' value='전송'>
		<input type='reset' value='취소'>
	</form>
</body>
</html>