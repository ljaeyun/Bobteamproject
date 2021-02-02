<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥향기 :: 상품수정</title>
  <%@ page import="java.util.*" %>
  <%@ page import="java.text.SimpleDateFormat" %>
  
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/seller/goodsRevise.css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/include/header.jsp"/>

		<section>
			<nav>
				<ul>
					<li><a id="menu" href ="<%=application.getContextPath()%>/goodsRegist">상품 등록</a></li>    <!-- 주 소 수 정-->
					<li><a> &nbsp</a></li>
					<li><a id="menu" href ="<%=application.getContextPath()%>/goodsRevise">상품 수정</a></li>    <!-- 주 소 수 정-->
					<li><a> &nbsp</a></li>
					<li><a id="menu" href ="<%=application.getContextPath()%>/goodsDetail">상품 상세조회</a></li>    <!-- 주 소 수 정-->
				</ul>
				
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
			</nav>
		
		</section>
					
					<div style="margin-bottom:15px;font-family: 'Noto Sans KR Medium';" class = "buttonBox" align ="right">
						      <!-- 주 소 수 정-->					
						<a class = "btn" id="can" href="../account/myinfo">취소</a>            <!-- 주 소 수 정-->
					</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>