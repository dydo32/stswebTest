<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- DispatcherServlet이 전달하는 메시지를 출력할 페이지 -->
<!DOCTYPE html>
<html>
<head>
<title>인사관리시스템</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
 </head>  
<body>
<!-- top에 보여질 메뉴 -->

	<div class="col-sm-10">
			<form role="form" class="form-horizontal"
				action="/insaPro/insert.do" method="post" 
				name="myform">
				<fieldset>
					<div id="legend">
						<legend>회원관리</legend>
					</div>
					<div class="form-group">
						<!-- 부서코드 -->
						<label class="control-label col-sm-2" for="orgcode">부서코드</label>
						<div class="col-sm-3">
							<input type="text" id="orgcode" name="deptNo"
								placeholder="부서코드" class="form-control"
								 required>
						</div>
					</div>

					
					
					<div class="form-group">
						<!-- 성명-->
						<label class="control-label col-sm-2" for="orgname">성명</label>
						<div class="col-sm-3">
							<input type="text" id="orgname" name="name"
								placeholder="성명" class="form-control" minlength="3" required>

						</div>
					</div>
					<div class="form-group">
						<!-- 아이디-->
						<label class="control-label col-sm-2" for="id">
						아이디</label>
						<div class="col-sm-3">
							<input type="text" id="id" name="id"
								placeholder="아이디" class="form-control" 
								minlength="3" required onkeyup="runAjax()">
							
						
						</div>
						<input type="button" value="아이디중복체크" class="btn btn-success"
							onclick="openidcheck()"/>
					</div>



				


					
					<div class="form-group">
						<!-- 패스워드-->
						<label class="control-label col-sm-2" for="pass">패스워드</label>
						<div class="col-sm-3">
							<input type="text" id="pass" name="pass"
								placeholder="패스워드" class="form-control" minlength="4" >

						</div>
					</div>
					<div class="form-group">
						<!-- 주소-->
						<label class="control-label col-sm-2" for="addr">주소</label>
						<div class="col-sm-3">
							<input type="text" id="addr" name="addr"
								placeholder="주소" class="form-control" minlength="3" >

						</div>
					</div>
				
					<div class="form-group">
						<!-- 포인트-->
						<label class="control-label col-sm-2" for="point">포인트</label>
						<div class="col-sm-3">
							<input type="text" id="point" name="point" 
							placeholder="포인트"
								class="form-control" minlength="3" required>

						</div>
					</div>
					<div class="form-group">
						<!-- 등급-->
						<label class="control-label col-sm-2" for="grade">등급</label>
						<div class="col-sm-3">
							<input type="text" id="grade" name="grade" 
							placeholder="등급"
								class="form-control" minlength="3" required>

						</div>
					</div>
					<div class="form-group">
						<!-- Button -->
						<div class="col-sm-3 col-sm-offset-2">
							<input type="submit" 
							value="회원가입" class="btn btn-success"/>
						</div>
					</div>
				</fieldset>
			</form>
	</div>

</body>
</html>