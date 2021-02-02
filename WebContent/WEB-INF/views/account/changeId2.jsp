<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>

	<form method="post" action="changeIdupdate">
		<label for="mid">아이디</label>
		<input type="text" value="${mem.mid}" readonly name="mid">
				
		<label for="mname">이름</label>
		<input type="text" value="${mem.mname}" name="mname">
		
		<label for="memail">이메일</label>
		<input type="text" value="${mem.memail}" name="memail">
		
		<label for="mphone">휴대전화</label>
		<input type="text" value="${mem.mphone}" name="mphone">
			
		<label for="maddress">주소</label>
		<input type="text" value="${mem.maddress}" name="maddress">
		
		<input type="hidden" value="${mem.mpw}" name="mpw">
		<input type="hidden" value="${mem.mgender}" name="mgender">
		<input type="hidden" value="${mem.mbirth}" name="mbirth">
		<input type="hidden" value="${mem.mgrade}" name="mgrade">
		
		
		<button class="btn btn-info" id="changebtn">수정</button>
		</form>
