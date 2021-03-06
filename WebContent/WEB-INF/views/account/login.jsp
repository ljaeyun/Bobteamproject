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
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/account/login.css">
</head>
<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
		
		<div id = "wrapper_contents">
		<div id ="content">
			<div id="article">
				<div class = "title2">
					<h3>로그인</h3>
					<div id="search_line">
					
					</div>
				</div>
				
				<div class = "txtinfo"> 
				<c:if test="${loginStatus == null}">
					<form name="loginfrom" onsubmit = "login()">
						<table id = "table1">
							<tr>
								<td class="inputtd">
									<input id = "mid" type = "text" name="mid" placeholder="아이디"/>
								    <small id="errorMid" class="form-text text-danger"></small>
								</td>
							</tr>
							
							<tr>
								<td class="inputtd">
									<input id = "mpw" type = "password" name="mpw" placeholder="패스워드"/>
									<small id="errorMpassword" class="form-text text-muted"></small>
								</td>
							</tr>
							<tr>
									
								<td class="inputtd"><button class="btn btn-primary btn-sm">로그인</button></td>
									
							</tr>
							<!-- ㅇㅇㅇ -->
						</table>
					</form>
					<script>
						function login() {
							event.preventDefault();
							
							$("#errorMid").html("");
							
							
							$("#errorMpassword").html("");
							
							const mid = $("#mid").val();
							var validation = true;
							if(mid === "") {
								$("#errorMid").html("필수입력이니다");
								validation = false;
							}
							
							const mpw = $("#mpw").val();
							if(mpw === "") {
								$("#errorMpassword").html("필수입력힙니다");
								validation = false;
							}
							
							if(!validation)
							{
								return;
							}
							$.ajax({
								url: "login",
								method:"post",
								data : {mid, mpw},
								success : function(data) {
									//{"result" : "success | wrongMid | wrongMpassword"}
									if(data.result === "success") {
										alert("로그인 성공");
										location.href="/bobapp/";
									} else if(data.result === "wrongMid"){
										$("#errorMid").html("아이디가 존재하지 않습니다");
									} else {
										$("#errorMpassword").html("비밀번호가 틀렸습니다");
									}
								}
							});
						}
					</script>
					
					</c:if>
					
					
					<table id ="table2">
							<tr>
								<td class="inputtd"><button onclick="location.href='createId'" class="btn btn-danger btn-sm">회원가입</button></td>
							</tr>
							<tr style="21px">
								<td class="inputtd2" style="font-family: 'Noto Sans KR medium';"><a href="" >아이디, 비밀번호 찾기</a></td>
							</tr>
					</table>
					
					<c:if test="${loginStatus!=null }">
					<a class="btn btn-info btn-sm" href="logout">로그아웃</a>
					</c:if>
				</div>
				
				
			</div>
		</div>
</div>
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>