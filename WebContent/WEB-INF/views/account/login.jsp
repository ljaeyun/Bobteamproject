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
					<form method="post" action="login">
						<table>
							<tr>
								<td class="inputtd"><input id = "uid" type = "text"/></td>
							</tr>
							
							<tr>
								<td class="inputtd"><input id = "uid" type = "password"/></td>
							</tr>
							<tr>
								<td class="inputtd"><button onclick="" class="btn btn-primary btn-sm">로그인</button></td>
							</tr>
							<tr>
								<td class="inputtd"><button onclick="location.href='../createID/createID.html'" class="btn btn-danger btn-sm">회원가입</button></td>
							</tr>
							<tr style="21px">
								<td class="inputtd2" style="font-family: 'Noto Sans KR medium';"><a href="" >아이디, 비밀번호 찾기</a></td>
							</tr>
							
							
						</table>
					</form>
				</div>
				
				
			</div>
		</div>
</div>
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>