<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function() {
	//id속성이 boardCategory로 정의된 모든 li에 익명의 함수를 적용하겠다는 의미
	$("#boardCategory>li").each(function(){
		$(this).click(function(){
			//현재 작업중인 객체가 click되면 ajax를 요청할 수 있도록 처리
			category = $(this).text();
			//alert(category);
			$.ajax({
				url: "/stswebTest/board/ajax_boardlist.do",
				type: "get",
				data:{
					"category":category
				},
				success:function(data){
					//alert(data[0].title+","+data[0].write_date);
					mydata = ""; //조회한 json객체안의 모든 데이터를 꺼내서 추가할 변수
					for(i=0;i<data.length;i++){
						mydata = mydata + "<tr>"
						+"<td class='boardContent'>"+data[i].title+"</td>"
						+"<td class='boardDate'>"+data[i].write_date+"</td>"
						+"</tr>";
					}
					//alert(mydata);
					$("#mydatalist").empty(mydata);
					$("#mydatalist").append(mydata);
				},
				error:function(a,b,c){	//ajax실패시 원인(에러메시지)
					alert(a+b+c);
				}
			});
		});
	});
});
</script>
</head>
<body>
	<div class="col-sm-8" style="padding: 30px">
		<div class="panel panel-primary"
			style="border-color: #edeef1">
			<div class="panel-footer">게시판</div>
			<div class="panel-body">
				<ul class="nav nav-tabs" id="boardCategory">
					<li class="class active"><a href="#" >사내소식</a></li>
					<li class="category"><a href="#">경조사</a></li>
					<li class="category"><a href="#">게시판</a></li>
				</ul>
				<div id="boardMain" style="padding-top: 20px; padding-left: 10px">
					<table id="mydatalist">
					<!-- 	<tr id="test">
							<td class="boardContent" style="">mini프로젝트 개최</td>
							<td class="boardDate" style="">2018.07.13</td>
						</tr> -->
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>