<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<!-- 		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>		 -->
		<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
<meta charset="UTF-8">
<title>밥향기 :: 공지사항</title>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_customer_service_notice.css">

		<script>
			const noticeClick = () => {window.location.href="<%=application.getContextPath()%>/customer_service/customer_service_notice"};
			const faqClick = () => {window.location.href="<%=application.getContextPath()%>/customer_service/customer_service_faq"};
			const not1Click = () => {window.location.href="<%=application.getContextPath()%>/customer_service/cs_notice_01"};
			const not2Click = () => {window.location.href="<%=application.getContextPath()%>/customer_service/cs_notice_02"};
			const not3Click = () => {window.location.href="<%=application.getContextPath()%>/customer_service/cs_notice_03"};
		</script>


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
				<table id="notice_table">
					
					<tr id="notice_title">
						<th class="not_list_num">번호</th>
						<th>제목</th>
						<th>등록일</th>
					</tr>
					<tr class="notice_list">
						<td class="not_list_num" >3</td>
						<td class="not_list_title" onclick="not3Click()"><div class="not_list_title">(주)밥향기 개인정보처리방침 내용 변경 고지[2021.01.11시행]</div></td>
						<td class="not_list_date">2021-01-10</td>
					</tr>
					<tr class="notice_list">
						<td class="not_list_num">2</td>
						<td class="not_list_title" onclick="not2Click()"><div class="not_list_title">[1월 2차] 미리보는 밥향기 전체메뉴</div></td>
						<td class="not_list_date">2020-12-31</td>
					</tr>
					<tr class="notice_list">
						<td class="not_list_num">1</td>
						<td class="not_list_title"onclick="not1Click()"><div class="not_list_title">새로운 집밥 "밥향기"를 선보입니다.</div></td>
						<td class="not_list_date">2020-12-14</td>
					</tr>
					
					
					
				</table>
				 
				
				</div>
			</div>
			
		</div>
		
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		
	</body>
</html>