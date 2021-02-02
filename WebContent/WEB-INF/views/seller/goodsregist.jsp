<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/seller/goodsRegist.css">

<br/>
	
		<h4><b>상품 등록</b></h4>
			<hr style="height:5px; background-color:black">
	<div class="wrapper">
		<div class="content">
		<form enctype="multipart/form-data" name="RegistForm" action="goodsregist" method="post">
			<div class="form-group">
				<label for="pname">상품의 이름을 입력하세요</label>
					<input type="text" class="form-control" id="pname" name="pname">
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
					<input type="text" class="form-control" id="pprice" name="pprice">
					<small class="form-text text-muted">숫자로만 입력하세요</small>
			</div>
			<div class="form-group">
			<label for="pamount">조리기준 인분을 입력하세요</label>
					<input type="text" class="form-control" id="pamount" name="pamount">
					<small class="form-text text-muted">예시: 3인분</small>
			</div>
			<div class="form-group">
			<label for="ptime">조리시간을 입력하세요</label>
					<input type="text" class="form-control" id="ptime" name="ptime">
					<small class="form-text text-muted">분단위로 숫자만 입력하세요</small>
			</div>
			<div class="form-group">
			<label for="pdifficulty">조리 난이도를 입력하세요</label>
					<input type="text" class="form-control" id="pdifficulty" name="pdifficulty">
					<small class="form-text text-muted">"상", "중", "하" 로 입력하세요</small>
			</div>
			<div class="form-group">
			<label for="pweight">상품의 중량을 입력하세요</label>
					<input type="text" class="form-control" id="pweight" name="pweight">
					<small class="form-text text-muted">그램단위로 숫자만 입력하세요</small>
			</div>
			<div class="form-group">
			<label for="psubtitle">상품의 상세설명란의 타이틀을 입력하세요</label>
					<textarea class="form-control" id="psubtitle" name="psubtitle"
					rows="2" cols="50"></textarea>
					<small class="form-text text-muted">20자 내외 권고</small>
			</div>
			<label for="pcontent">상품의 상세설명을 입력하세요</label>
					<textarea class="form-control" id="pcontent" name="pcontent"
					rows="6" cols="50"></textarea>
					<small class="form-text text-muted">2000자 이내 권고</small>
			<button class="btn btn-secondary">저장</button>
			<a class="btn btn-secondary" href="myinfo">취소</a>
			</form>
			</div>
			<hr/>					
	</div>	
