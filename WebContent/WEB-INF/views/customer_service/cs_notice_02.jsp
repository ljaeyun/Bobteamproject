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
				<div id="category_01" class="cs_cat"><a href="customer_service_faq"><b>FAQ</b></a></div>
				<div id="category_02" class="cs_cat"><a href="customer_service_notice"><b>공지사항</b></a></div>
			</div>
			<div id="notice_wrap">
				<table id="notice_detail_table">
					
					<tr id="notice_detail_title">
						<th class="not_detail_title">[1월 2차] 미리보는 밥향기 전체 메뉴</th>
					</tr>
					<tr class="notice_detail_content">
						<td class="not_detail_content">안녕하세요. 밥향기입니다.<br/>
							<br/>
							밥향기를 사랑해주시는 고객 여러분께 안내말씀 드립니다. <br/>
							<br/>
							<br/>
							1월 2주차 밥향기의 메인메뉴를 선공개합니다. <br/>
							맛있어서 저희조만 먹을거니까 알아서 인원 조율 해주시기 바랍니다. <br/>
							
							■ 적용 일자 : 2021년 1월 15일 (금) <br/>
							
							■ 공지 내용 : <br/>
							<br/>
							<b>IT 타워 지하 시골밥상 : 금요일은 돈까스 정식 먹는 날. </b></td>
				
					</tr>
				
				</table>
				 <button class="btn_notice_back"><a href="customer_service_notice">목록</a></button>
			</div>
			</div>
			
		</div>
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		
	</body>
</html>