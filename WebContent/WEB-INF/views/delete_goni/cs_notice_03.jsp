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
			<table id="notice_detail_table">
					
					<tr id="notice_detail_title">
						<th class="not_detail_title">밥향기 개인정보처리방침 내용 변경 고지 [2021.1.11 시행]</th>
					</tr>
					<tr class="notice_detail_content">
						<td class="not_detail_content">안녕하세요. 밥향기입니다.<br/>
							<br/>
							밥향기를 사랑해주시는 고객 여러분께 안내말씀 드립니다. <br/>
							<br/>
							<br/>
							밥향기 홈페이지의 「개인정보처리방침」이 2021년 1월 12일자로 변경될 예정입니다.<br/>
							아래 변경된 개인정보처리방침의 내용을 확인하시어 한국소트프웨어산업협회가 운영하는 밥향기 이용에 참고 부탁드립니다.<br/>
							<b>정확히 인지하지 않으실경우 밖에서 떨고오실 수 있으니 주의해주시기 바랍니다.</b><br/>
							<br/>
							 ​​​ <br/>
							<br/>
							밥향기의 개인정보처리방침 변경 안내 <br/>
							
							■ 적용 일자 : 2021년 1월 11일 부터 <br/>
							
							■ 변경 내용 : <br/>
							<br/>
							<b>개인정보처리방침 8. 수업시간에 졸면 밖에서 한시간 떨고 오게됨. </b></td>
				
					</tr>
				
				</table>
				 
				<button class="btn_notice_back"><a href="customer_service_notice">목록</a></button>
			</div>
		</div>
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		
	</body>
</html>