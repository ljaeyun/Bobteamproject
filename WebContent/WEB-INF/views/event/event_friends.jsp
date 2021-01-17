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

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/event/cs_event_friends.css">
</head>
<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		<div id="event_friends">
		
			<div id="mainframe">
				
				<div id="search_inform">
				<h1 id="search_big">친구초대 이벤트</h1>
				<h4 id="search_det">밥향기를 친구에게 추천하고, 친구와 함께 적립금 혜택을 받아보세요.<br/>
					 초대할 떄마다 나의 적립금이 차곡차곡 쌓여요
				</h4></div>	
				<div id="search_line"></div>
				
				 <div id="mainframe02">	
				  
				 	<div id ="mainframe02_1">
				 		<h5>친구도 나도 </h5>
				 		<h5>5000원씩 적립</h5>
				 	</div>
				 	<div id ="mainframe02_2">
		 				<div id="steptitle"><h5>친구를 초대할 때 마다</h5></div>
 						<div id="steptable">
		 			<table id="stable">
		 				<tr>
			 				<th><h6>Step.01&nbsp;&nbsp;&nbsp; &nbsp;</h6></th>
			 				<th><h8>가입할 때 추천인에 나의 ID를 쓴 친구의 첫 배송이 완료되면</h8></th>
			 			</tr>
			 			<tr>
			 				<th><h6>Step.02&nbsp;&nbsp;&nbsp; &nbsp; </h6></th>
			 				<th><h8>친구도 나도 적립금 5000원 지급</h8></th>
			 			</tr>
			 			<tr>
			 				<th></th>
			 				<th><p>배송완료후 2일이내 지급</p></th>
			 			</tr>
		 			</table>
		 		</div>
	 		</div>
	 				
		 </div>
	 </div>	

	<div id="vip">
				<div id ="vip_gift">
					<div id="vip_gift01">
						<p id ="p1">이 달의 가입 선물</p>
						<span id ="p2">이  것이 자바다<br/><br/>혼자 공부하는 자바다</span>
						
					</div>
					<div id="vip_gift02">
						<img height=300px src="./이것이 자바다.PNG"/>
						<img height=300px src="./혼공자.PNG"/>
					</div>
			</div>
			</div>
			</div>
		
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>