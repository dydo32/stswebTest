<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,emp.dto.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="UTF-8">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
</head>
<body>
	<div>
	<%ArrayList<EmpDTO> deptlist =
			(ArrayList<EmpDTO>) request.getAttribute("emplist"); 
	 	 int size = deptlist.size();
	  %>
		<table class="table">
			<thead>
				<tr>
					<th>사원코드</th>
					<th>사원명</th>
					<th>입사일</th>
					<th>등급</th>
					<th>주소</th>
					<th>부서코드</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<%for(int i=0;i<size;i++){ 
				EmpDTO emp =  deptlist.get(i);%>
				<tr>
					<td><a
					 href="/stswebTest/read.do?id=<%= emp.getId()%>"><%= emp.getId() %></a></td>
					<td><%= emp.getName() %></td>
					<td><%= emp.getHiredate() %></td>
					<td><%= emp.getGrade() %></td>
					<td><%= emp.getAddr() %></td>
					<td><%= emp.getDeptNo()%></td>
					<td><a 
					href="/stswebTest/delete.do?id=<%= emp.getId()%>">삭제</a></td>
				</tr>
			<%}%>
			</tbody>
		</table>
	</div>

</body>
</html>
