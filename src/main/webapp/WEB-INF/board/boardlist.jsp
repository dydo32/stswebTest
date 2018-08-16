<%@ page import="kr.kitri.board.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
</head>
<body>
<%	ArrayList<BoardDTO> boardlist=(ArrayList<BoardDTO>) request.getAttribute("boardlist");  
	int size = boardlist.size();%> 
	<div>
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
				<%for(int i=0;i<size;i++){ 
					BoardDTO board = boardlist.get(i);%>
				<tr>
					<td><%=board.getBoard_no() %></td>
					<td><a href="/stswebTest/board/read.do?board_no=<%=board.getBoard_no()%>&state=READ"><%=board.getTitle() %></a></td>
					<td><%=board.getId() %></td>
					<td><%=board.getWrite_date() %></td>
				</tr>
				<%} %> 
			</tbody>
		</table>
	</div>

</body>
</html>
