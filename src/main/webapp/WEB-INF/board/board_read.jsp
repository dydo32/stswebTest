<%@page import="kr.kitri.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE>
<html>
<head>
<title>인사관리시스템</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<%
	BoardDTO board = (BoardDTO)request.getAttribute("board");
%>
	<form class="form-horizontal" action="/stswebTest/board/read.do" method="post">
	
		<input type="hidden" name="board_no" value="<%=board.getBoard_no()%>">
		<input type="hidden" name="state" value="UPDATE">
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="id" class="control-label">번호</label>
			</div>
			<div class="col-md-8"><%=board.getBoard_no() %></div>
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="id" class="control-label">게시글종류</label>
			</div>
			<div class="col-md-3">
				<select name="category" class="form-control">
					<option value="경조사" <%if(board.getCategory().equals("경조사")){%>selected<%} %>>경조사</option>
					<option value="사내소식"<%if(board.getCategory().equals("사내소식")){%>selected<%} %>>사내소식</option>
					<option value="게시판" <%if(board.getCategory().equals("게시판")){%>selected<%} %>>게시판</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="id" class="control-label">작성자</label>
			</div>
			<div class="col-md-8"><%=board.getId() %></div>
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="title" class="control-label">제목</label>
			</div>
			<div class="col-md-8"><%=board.getTitle() %></div>
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="title" class="control-label">작성날짜</label>
			</div>
			<div class="col-md-8"><%=board.getWrite_date() %></div>
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="text" class="control-label">내용</label>
			</div>
			<div class="col-md-8"
				style="width: 500px; height: 400px; border: solid 1px;"><%=board.getContent() %></div>
		</div>

		<div class="form-group">
			<div class="col-md-10 text-center">
				<input type="submit" class="btn btn-lg btn-primary" value="수정">

				<button type="button" class="btn btn-danger btn-lg" 
					onclick="location.href='/stswebTest/board/list.do'">
					<i class="fa fa-fw fa-close"></i> 목록
				</button>
				
				<button type="button" class="btn btn-danger btn-lg"
					onclick="location.href='/stswebTest/board/delete.do?board_no=<%=board.getBoard_no()%>'">
					<i class="fa fa-fw fa-close"></i> 삭제
				</button>
				
			</div>
		</div>
	</form>

</body>
</html>