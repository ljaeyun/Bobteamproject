<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥향기 :: 상품등록</title>
  <%@ page import="java.util.*" %>
  <%@ page import="java.text.SimpleDateFormat" %>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/seller/goodsRegist.css">
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	<div class="wrapper">
		<div class="content">
		<div class="alert alert-secondary" role="alert">상품 수정</div>
		<form enctype="multipart/form-data" name="goodsmodify" action="goodsmodify" method="post">
			<div class="form-group">
				<label for="pname">${product.pname}</label>
					<input type="text" class="form-control" id="pname" name="pname" value="${product.pname}">
					<small class="form-text text-muted">10자 이내</small>
			</div>
			<div class="form-group">
				<label for="pmainimg">첫번째 이미지를 첨부하세요</label>
					<input type="file" class="form-control-file border" id="pmainimg" name="pattach1">
					<small class="form-text text-muted">쇼핑몰의 기본 상품 이미지입니다</small>
			</div>
			<div class="form-group">
				<label for="psubimg1">두번째 이미지를 첨부하세요</label>
					<input type="file" class="form-control-file border" id="psubimg1" name="pattach2">
					<small class="form-text text-muted">쇼핑몰의 상세 상품 이미지입니다</small>
			</div>
			<div class="form-group">
				<label for="psubimg2">세번째 이미지를 첨부하세요</label>
					<input type="file" class="form-control-file border" id="psubimg2" name="pattach3">
					<small class="form-text text-muted">쇼핑몰의 상세 상품 이미지입니다</small>
			</div>
			<div class="form-group">
			<label for="pprice">상품의 가격을 입력하세요</label>
					<input type="text" class="form-control" id="pprice" name="pprice" value="${product.pprice}">
					<small class="form-text text-muted">숫자로만 입력하세요</small>
			</div>
			<div class="form-group">
			<label for="pamount">조리기준 인분을 입력하세요</label>
					<input type="text" class="form-control" id="pamount" name="pamount" value="${product.pamount}" >
					<small class="form-text text-muted">예시: 3인분</small>
			</div>
			<div class="form-group">
			<label for="ptime">조리시간을 입력하세요</label>
					<input type="text" class="form-control" id="ptime" name="ptime" value="${product.ptime}" >
					<small class="form-text text-muted">예시: 30분</small>
			</div>
			<div class="form-group">
			<label for="pdifficulty">조리 난이도를 입력하세요</label>
					<input type="text" class="form-control" id="pdifficulty" name="pdifficulty" value="${product.pdifficulty}" >
					<small class="form-text text-muted">"상", "중", "하" 로 입력하세요</small>
			</div>
			<div class="form-group">
			<label for="pweight">상품의 중량을 입력하세요</label>
					<input type="text" class="form-control" id="pweight" name="pweight" value="${product.pweight}" >
					<small class="form-text text-muted">그램단위로 숫자만 입력하세요</small>
			</div>
			<div class="form-group">
			<label for="psubtitle">상품의 상세설명란의 타이틀을 입력하세요</label>
					<textarea class="form-control" id="psubtitle" name="psubtitle" 	placeholder="${product.psubtitle}" rows="2" cols="50"></textarea>
					<small class="form-text text-muted"></small>
			</div>
			<label for="pcontent">상품의 상세설명을 입력하세요</label>
					<textarea class="form-control" id="pcontent" name="pcontent" placeholder="${product.pcontent}" rows="6" cols="50"></textarea>
					<small class="form-text text-muted">2000자 이내 권고</small>
			<button class="btn btn-primary">저장</button>
			</form>
			</div>
			<hr/>
			<div id="ClientC">
				<p><u> 밥향기 고객센터 </u><br>
				<br>
				카카오톡 : <b> 친구찾기 > 쿡킷 </b><br>
				이메일 : <b>cookcook@CookKit.com </b><br>
				전화 : 070-1234-5678 <br>
				시간 : <b>월~금 : 09 : 00 ~ 18 : 00 </b><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>공휴일 휴무</b>
				</p>
			</div>
		
		
					
	</div>	
	
			<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>