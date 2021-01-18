<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<!-- 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
				<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>		 -->
				<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
		<meta charset="UTF-8">
		<title>밥향기 :: 공지사항(세부)</title>
		
				<script>
					function noticeClick () {window.location.href="<%=application.getContextPath()%>/customer_service/customer_service_notice"};
					function faqClick () {window.location.href="<%=application.getContextPath()%>/customer_service/customer_service_faq"};
					function noticeBack () {window.location.href="<%=application.getContextPath()%>/customer_service/customer_service_notice"};
				</script>
		
		
				<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_cs_notice.css">
	</head>

	<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		
		<div id="wrapper_content">
		<div id="cs_wrap">
			<div id="title_box">
				<div id="title"><b>고객센터</b></div>
			</div>
			
			<div id="category_box">
				<div id="category_01" class="cs_cat" onclick="faqClick()"><b>FAQ</b></div>
				<div id="category_02" class="cs_cat" onclick="noticeClick()"><b>공지사항</b></div>
			</div>
				<div id="notice_wrap">
				<table id="notice_detail_table">
					
					<tr id="notice_detail_title">
						<th class="not_detail_title">새로운 집밥 "밥향기"를 선보입니다.</th>
					</tr>
					<tr class="notice_detail_content">
						<td class="not_detail_content" >안녕하세요. 밥향기입니다.<br/>
							<br/>
							밥향기를 사랑해주시는 고객 여러분께 안내말씀 드립니다. <br/>
							<br/>
							<br/>
							새롭게 출시한 밥향기는<br/>
							온라인에서 원하는 메뉴를 주문하면<br/>
							
							요리에 필요한 "손질된 원물, 야채, 전용 소스 및 메뉴 레시피"를 집 앞까지 배송,<br/>
							
							간편하고 즐겁게 집밥을 요리하여<br/>
							즐길 수 있는 서비스입니다.<br/>
							<br/><br/><br/>
							 
							
							새벽마다 만나는 행복한 하루의 시작,<br/><br/>
							
							집밥을 특별하게 만드는<br/>
							셰프의 요리키트 밥향기를 경험해보세요!<br/>
				
							</tr>
				
				</table>
				 
				 <button class="btn_notice_back" onclick="noticeBack()">
				 	목록
				 </button>
				
				</div>
			</div>
		</div>
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		
	</body>
</html>