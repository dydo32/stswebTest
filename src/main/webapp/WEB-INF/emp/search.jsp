<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 검색</title>
</head>

<body>
	<div align="center">
		<form method="post" action="/stswebTest/search.do">
			<input type="hidden" name="test" value="paramtest">
			<h1>회원 검색</h1>
			<h3>
				주소:<input type="text" name="addr" />
				 <input type="submit"
					value="검색">
			</h3>
		</form>
	</div>

</body>
</html>