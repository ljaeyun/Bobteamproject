<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link href='https://fonts.googleapis.com/css?family=Noto Sans KR' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Noto Sans KR Black' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Noto Sans KR Light' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Noto Sans KR Medium' rel='stylesheet'>
	<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
<meta charset="UTF-8">
<title>밥향기 :: 로그인</title>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/account/deleteId.css">
</head>
<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
		
		<div id = "wrapper_contents">
		<div id ="content">
			<div id="article">
				<div class = "title2">
					<h3>회원탈퇴</h3>
					<div id="search_line"></div>
				</div>
				
				<div id="checktext" style="text-align:center; margin-top:20px;"><h4>정말 탈퇴???</h4></div>
				<div id="deletebtn">
					<a class="btn btn-danger" id="deleteyes" href="deletemember">예</a>
					<a class="btn btn-primary" id="deleteno" href="/bobapp/">아니요</a>
				</div>
			</div>
		</div>
</div>
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>