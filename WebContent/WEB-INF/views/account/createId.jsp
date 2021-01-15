<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>		 -->
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/account/createId.css">
</head>
<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
			<div id = "wrapper_contents">
			<div id = "content">
				<div id="article">
					<div class = "title2">
						<h4>회원가입</h4>
						<p class = "sub"> 필수입력사항 </p>
						
						<div id="search_line">
						
						</div>
					</div>
					
					<div class = "txtinfo"> 
					
						<table >
							<tr>
								<th>아이디</th>
								<td class="inputtd"><input id = "uid" placeholder="6자리 이상의 영문 혹은 영문과 숫자를 조합" type = "text"/></td>
								
								<td class="checktd"><input type="button" id ="checkbtn" value="중복확인" onclick='console.log("확인")'/></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td class="inputtd"><input id = "uid" placeholder="비밀번호를 입력해주세요" type = "password"/></td>
								
							</tr>
							<tr>
								<th>비밀번호확인</th>
								<td class="inputtd"><input id = "uid" placeholder="비밀번호를 한번 더 입력해주세요" type = "password"/></td>
								
							</tr>
							<tr>
								<th>이름</th>
								<td class="inputtd"><input id = "uid" placeholder="이름을 입력해주세요" type = "text"/></td>
								
							</tr>
							<tr>
								<th>이메일</th>
								<td class="inputtd"><input id = "uid" placeholder="예: example@bobsmell.com" type = "text"/></td>
								<td class="checktd"><input type="button" id ="checkbtn" value="중복확인" onclick='console.log("확인2")'/></td>
							</tr>
							<tr>
								<th>휴대폰</th>
								<td class="inputtd"><input id = "uid" placeholder="000-0000-0000" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required type = "tel"/></td>
								<td class="checktd"><input type="button" id ="checkbtn" value="인증번호" onclick='console.log("확인3")'/></td>
							</tr>
							<tr>
								<th>주소</th>
								
								<td class="searchad"><input type="button" id ="checkbtn" value="주소검색" onclick='console.log("확인4")'/></td>
							</tr>
							<tr>
								<th>성별</th>
								<td>
									<div id = "radiob">
										<label><input style="margin-left:67px"type="radio" name="gender" value="man">남 </label>
										<label><input style="margin-left:67px"type="radio" name="gender" value="woman">여 </label>
										<label><input style="margin-left:67px"type="radio" name="gender" value="no">선택안함 </label>
									</div>
								</td>
								
							</tr>
							<tr>
								<th>생년</th>
								<td class="inputtd"><input id = "uid" type = "date"/></td>
							</tr>
							<tr id = "linetr">
								<th style="padding-top:21px; vertical-align:top;">이용약관동의</th>
								<td>
									<form class = "checkbox" name="form1">
								
										<p><input type="checkbox" name="selectall" value="selectall" style="margin-right : 25px" id="chk" onclick="selectAll(this)"/><label for="chk"><span><b>전체동의</b></span></label></p>
										<p><input type="checkbox" name="agreebox" value="twodragon" style="margin-right : 25px" onclick="checkSelectAll()"/><label for="nom1"><span>이용약관동의(필수)</span></label></p>
										<p><input type="checkbox" name="agreebox" value="myinfo" style="margin-right : 25px" onclick="checkSelectAll()"/><label for="nom2"><span>개인정보처리방침의(필수)</span></label></p>
										<p><input type="checkbox" name="agreebox" value="myinfo2" style="margin-right : 25px" onclick="checkSelectAll()"/><label for="nom3"><span>개인정보처리방침의(선택)</span></label></p>
										<p><input type="checkbox" name="agreebox" value="coupon" style="margin-right : 25px" onclick="checkSelectAll()" /><label for="nom4"><span>무료배송,할인쿠폰 등 혜택/정보 수신 동의(선택)</span></label></p>
										<p>
											<div id = "radiob">
											<label><input style="margin-left:67px"type="radio" name="INFO" value="sms" >SMS </label>
											<label><input style="margin-left:67px"type="radio" name="INFO" value="email" >이메일 </label>
											</div> 
										</p>
										<p><label><input type="checkbox" name="agreebox" value="oldage" style="margin-right : 25px" onclick="checkSelectAll()"/>본인은 만 14세 이상입니다(필수)</label></p>
						
									</form>
								</td>
							</tr>
						
						</table>
						
						<div class="joinbtn">
							<input type="button" id ="checkbtn" value="가입하기" onclick='console.log("확인6")'/>
						</div>
					
					</div>
					
					
				</div>
			</div>
		</div>
	
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>