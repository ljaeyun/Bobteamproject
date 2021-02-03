<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/seller/goodsRegist.css">

	<br/>
		<h4><b>회원정보 수정</b></h4>
			<hr style="height:5px; background-color:black">
	<div class="wrapper">
		<div class="content">

		<form enctype="multipart/form-data" action="changeIdupdate" method="post">
			<div class="form-group">
				<label for="pname">아이디</label>
					<input type="text" class="form-control" readonly name="mid" value="${mem.mid}">
			</div>
	
			<div class="form-group">
			<label for="pprice">이름</label>
					<input type="text" class="form-control" id="mname" name="mname" value="${mem.mname}">
			</div>
			<div class="form-group">
			<label for="pamount">이메일</label>
					<input type="text" class="form-control" id="memail" name="memail" value="${mem.memail}" >

			</div>
			<div class="form-group">
			<label for="ptime">휴대전화</label>
					<input type="text" class="form-control" id="mphone" name="mphone" value="${mem.mphone}" >

			</div>
			<div class="form-group">
			<label for="pdifficulty">주소</label>
					<input type="text" class="form-control" id="maddress" name="maddress" value="${mem.maddress}" >
				
			</div>
				
				<input type="hidden" value="${mem.mpw}" name="mpw">
				<input type="hidden" value="${mem.mgender}" name="mgender">
				<input type="hidden" value="${mem.mbirth}" name="mbirth">
				<input type="hidden" value="${mem.mgrade}" name="mgrade">
				
			<button  id="changebtn"class="btn btn-secondary">저장</button>
			</form>
			</div>
			<hr/>		
	</div>	