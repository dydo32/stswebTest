<%@page import="kr.kitri.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/kimsaemERP/common/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
	BoardDTO board = (BoardDTO)request.getAttribute("board");
%>
	<h4>
		<i class="fa fa-angle-right"></i> 게시글 작성하기
	</h4>
	<hr>
	<div class="row mt">
		<div class="col-lg-12">
			<div class="form-panel">
			
				<form class="form-horizontal style-form" action="/stswebTest/board/update.do" method="post">
					<div class="form-group" style="border: 1px solid #eff2f7;">
						<input type="hidden" name="board_no" value="<%=board.getBoard_no()%>">
						<label class="col-sm-2 col-sm-2 control-label">작성자</label>
						<div class="col-sm-10">

							<p class="form-control-static"><%=board.getId() %></p>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">게시글 유형</label>

							<div class="col-sm-5">
								<select name="category" class="form-control">
									<option value="경조사" >경조사</option>
									<option value="사내소식">사내소식</option>
									<option value="게시판" selected>게시판</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">제목</label>
							<div class="col-sm-8">
								<input type="text" class="form-control"
										 name="title" value="<%=board.getTitle() %>">
								<span class="help-block">글양식에 맞게 내용을 입력해주세요</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">내용</label>
							<div class="col-sm-8">
								<textarea id="content"
									style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
									rows=15 name="content"><%=board.getContent() %></textarea>

							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-4 text-center"></div>
							<div class="col-lg-2 text-center">
								<button type="submit" class="btn btn-success"
									style="width: 100px; background-color: #0ea006">등록</button>
							</div>
							<div class="col-lg-2 text-center">
								<button type="reset" class="btn btn-default"
									style="width: 100px; background-color: #9a9a9a">취소</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>