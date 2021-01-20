<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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
					<form method="post" action="login2">
						<table>
							<tr>
								<td class="inputtd"><input id = "uid" type = "text" name="uid" placeholder="아이디"/></td>
							</tr>
							
							<tr>
								<td class="inputtd"><input id = "uid" type = "password" name="upassword" placeholder="패스워드"/></td>
							</tr>
							<tr>
									
								<td class="inputtd"><button class="btn btn-primary btn-sm">로그인</button></td>
									
							</tr>
							<!-- ㅇㅇㅇ -->
						</table>
					</form>
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