<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,kr.kitri.board.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
category = "<%=request.getAttribute("category")%>"
$(document).ready(function(){
	if(category==""){
		category="all";
	}
	$("#category").val(category).attr("selected","selected");
	$("#category").change(function(){
		location.href="/stswebTest/board/list.do?category="+encodeURI($(this).val());
	});
});
</script>
</head>
<body>
	<%
		ArrayList<BoardDTO> boardlist = (ArrayList<BoardDTO>) request.getAttribute("boardlist");
		int size = boardlist.size();
	%>
	<div style="padding-top: 30px">
		<div class="col-md-3" style="padding-bottom: 10px">
		    구분:
			<form action="/stswebTest/board/list.do" >
				<select name="category"  id="category">
					<option value="all">전체게시물</option>
					<option value="경조사">경조사</option>
					<option value="사내소식">사내소식</option>
					<option value="게시판">게시판</option>
				</select>
			</form>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (int i = 0; i < size; i++) {
						BoardDTO board = boardlist.get(i);
				%>
				<tr>
					<td><%=board.getBoard_no()%></td>
					<td><a
						href="/stswebTest/board/read.do?board_no=<%=board.getBoard_no()%>&state=READ"><%=board.getTitle()%></a></td>
					<td><%=board.getId()%></td>
					<td><%=board.getWrite_date()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	<form action="/stswebTest/board/search.do">
		<select name="tag">
			<option value="writer">작성자</option>
			<option value="title">제목</option>
			<option value="content">본문</option>
		</select> <input type="text" name="search"/> <input type="submit" value="검색">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/stswebTest/board/insertView.do" style="text-align: right;">글쓰기</a></li>
		</ul>
	</form>

</body>
</html>
