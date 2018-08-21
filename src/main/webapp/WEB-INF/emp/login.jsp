<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<div>
	<form name="login_frm" action="/stswebTest/emp/login.do" method="post">
		<table cellpadding="0" cellspacing=5 width="815" bgcolor=#f3f3f3
			border=0>
			<tr>
				<td bgcolor=#ffffff height=100% align=center valign=top>
					<table cellpadding=0 cellspacing=0 border=0 width=710>
						<tr>
							<td>
								<table cellpadding="0" cellspacing=0 width="100%"
									bgcolor=#f7f7f7 border=0>
									<tr>
										<td bgcolor=#ffffff align=center>

											<table cellpadding="0" cellspacing="0" border=0 align=center
												width=678>
												<tr>
													<td align=center width=353>
														<table cellpadding="0" cellspacing="0" border=0 width=353>
															<tr>
																<td>
																	<table cellpadding="0" cellspacing="0" border=0>

																		<tr>
																			<td colspan=3><img
																				src="/stswebTest/resources/images/page_login.gif"></td>
																		</tr>
																		<tr>
																			<td height=25></td>
																		</tr>
																		<tr>
																			<td background="/stswebTest/resources/images/inputBg.gif"><img
																				src="/stswebTest/resources/images/login_id.gif"></td>
																			<td background="/stswebTest/resources/images/inputBg.gif"><input
																				type="text" name="id" size="15" class="grayinput"
																				tabindex=1 style="width: 156;"
																				 value=""></td>
																			<td rowspan=3 style="padding-left: 10" valign=bottom>
																			<input
																				type='image' src="/stswebTest/resources/images/btn_login.gif"
																				border="0" tabindex=3></td>
																		</tr>
																		<tr>
																			<td height=10></td>
																		</tr>
																		<tr>
																			<td background="/stswebTest/resources/images/inputBg.gif"><img
																				src="/stswebTest/resources/images/login_pass.gif"></td>
																			<td background="/stswebTest/resources/images/inputBg.gif"><input
																				type="password" name="pass" size="15"
																				class="grayinput" tabindex='2' style='width: 156;'>
																			</td>
																		</tr>
																		<tr>
																			<td colspan=3 align=right
																				style="padding-right: 9; padding-top: 12"><span
																				style="display: inline"><label
																					for="member_id_save"><input type="checkbox"
																						name="member_id_save" id="member_id_save"
																						value="T" />아이디저장</label> </span></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td colspan=3></td>
															</tr>

														</table>

													</td>

													<td style="padding-left: 60; padding-top: 60"></td>
												</tr>
												<tr>
													<td colspan=3 style="padding-top: 20" style=padding-left:40></td>
												</tr>
											</table>

										</td>
									</tr>
								</table>
							</td>
						</tr>

						<tr>
							<td height=30></td>
						</tr>
						<tr>
							<td></td>
						</tr>

						<tr>
							<td height=49></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>