<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
		<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
<meta charset="UTF-8">
<title>밥향기 :: FAQ</title>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_customer_service_faq.css">

	<script>
		
			function toggle_01() {
			  var x = document.getElementById("answer_list_01");
			  if (x.style.display === "none") {
			    x.style.display = "block";
			  } else {
			    x.style.display = "none";}}
			
			function toggle_02() {
				  var x = document.getElementById("answer_list_02");
				  if (x.style.display === "none") {
				    x.style.display = "block";
				  } else {
				    x.style.display = "none";}}
			
			function toggle_03() {
				  var x = document.getElementById("answer_list_03");
				  if (x.style.display === "none") {
				    x.style.display = "block";
				  } else {
				    x.style.display = "none";}}
			
			function toggle_04() {
				  var x = document.getElementById("answer_list_04");
				  if (x.style.display === "none") {
				    x.style.display = "block";
				  } else {
				    x.style.display = "none";}}
			
			const noticeClick = () => {window.location.href="<%=application.getContextPath()%>/customer_service/customer_service_notice"};
			const faqClick = () => {window.location.href="<%=application.getContextPath()%>/customer_service/customer_service_faq"};
		
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
			
			<div id="faq_wrap">
				<div id="search_notice"><b>FAQ 검색</b></div>			
				<div id="search_box">
					<div id="search_input">
						<form action="faq_search">
							<input id="search_txt" type="text" name="faq_search" style="width:635px; height: 50px;"/>
							<input id="search_btn" type="submit" value="검색"style="width: 60px; height: 45px;"></input>
						</form>
					</div>
				</div>
			
				<div id="faq_category_wrap">
					<div id="faq_category_title"><b>문의유형</b></div>
					<div id="faq_category_box">
						<div id="faq_category01" class="faq_cat">전체</div>
						<div id="faq_category02" class="faq_cat">배송</div>
						<div id="faq_category03" class="faq_cat">취소/반품</div>
						<div id="faq_category04" class="faq_cat">주문</div>
					</div>
				</div>
				
				<div id="faq_listbox">
						<div id="question_list_01" class="question_list"  onclick="toggle_01()">
							<div class="faq_Q_Icon"><img src="../img/letterQ.png" width="35px" height="35px"/></div>
							<div id="question_01" class="faq_q" >
								<ul>
								 	<li class="question_text">자택이 아닌 다른곳으로도 배송이 가능한가요?</li>
								 	<li class="question_type">배송</li>
								</ul>
								
							</div>
						</div>
						<div id="answer_list_01" class="answer_list">
							<ul>
								<li class="answer_text">COOKIT은 새벽에 배송되어 새벽 출입이 제한되는<br/>
									회사, 관공서, 상가, 학교, 기숙사, 병원, 교회, 시장 등은 배송이 불가합니다.<br/><br/>
									
									또한 위의 장소들은 새벽 출입이 되더라도 주문자와 연락이 어려운 새벽이기 때문에<br/>
									넓은 장소에서 위탁 장소를 찾기가 어렵고 분실의 위험도 높습니다.<br/>
									
									되도록 자택으로 주문해 주시기 바랍니다.<br/> </li>
							</ul>
						</div>
						<div id="question_list_02" class="question_list"  onclick="toggle_02()">
							<div class="faq_Q_Icon"><img src="../img/letterQ.png" width="35px" height="35px"/></div>
							<div id="question_02" class="faq_q">
								<ul >
								 	<li class="question_text">외국이나 해외에 거주하는 사람도 배송받을 수 있나요?</li>
								 	<li class="question_type">배송</li>
								</ul>
							</div>
						</div>
						<div id="answer_list_02" class="answer_list">
							<ul>
								<li class="answer_text">COOKIT은 서울, 경기, 인천 지역(일부지역 제외)에만 새벽 배송되고 있으며,<br/>
									신선 식품으로 해외 배송은 불가합니다.  </li>
							</ul>
						</div>
						<div id="question_list_03" class="question_list" onclick="toggle_03()">
							<div class="faq_Q_Icon"><img src="../img/letterQ.png" width="35px" height="35px"/></div>
							<div id="question_03" class="faq_q">
								<ul>
								 	<li class="question_text">배송을 못받았는데 [배송완료]로 확인돼요.</li>
								 	<li class="question_type">배송</li>
								</ul>
							</div>
						</div>
						<div id="answer_list_03" class="answer_list">
							<ul>
								<li class="answer_text">선택한 배송일에 배송받지 못하셨다면<br/>
									[고객행복센터>1:1 문의] 또는 고객행복센터(1668-1920)로 연락 주시기 바랍니다.<br/><br/>
									 
									※ 고객행복센터 상담시간<br/>
									- 평일 8:00~17:00<br/>
									- 토요일 8:00~12:00<br/>
									- 점심시간 12:00~13:00 (일/공휴일 휴무) </li>
							</ul>
						</div>
				</div>
			</div>
			
		<div id="indiq_banner">
			<div id="banner_image">
				<img width="50px" src="<%=application.getContextPath()%>/resources/img/ask_icon.png"></img>
			</div>
			<div id="indiq_banner_text">FAQ로 해결되지 않으셨다면, 궁금한 점을 문의해주세요. </div>
			<div id="indiq_banner_btn"> 
				<a class="btn btn-light"  href="javascript:indi1()">1대1문의 작성</a>
			</div>
		
		</div>
		<script>
			function indi1() {
				$.ajax({
					url: "indiQuest",
					method: "get",
					success: function(data) {
						$("#indiqBox").html(data);
					}
				});
			};
		</script>		
			<div id="indiqBox" style="margin-top:10px;"></div>
	
		<!-- 	<div id="indiv_question_box">
				<div id="indiq_title">1:1 문의</div>
				<div id="indiq_cat_box">
					<div id="indiq_cat">문의 유형</div>
					<div id="indiq_cat_input">
						<form id="indiq_cat_form">
							<input type="text" name="indiq" placeholder="문의 유형을 작성해주세요."></input>
						</form>
					</div>
				</div>
				<div id="indiq_content_box">
					<div id="indiq_content_title">문의 내용</div>
					<div id="indiq_content">
						<form id="indiq_content_form">
							<textarea rows="5" cols="100"></textarea>
						</form>
					</div>
				</div>
				<div id="indiq_waring"> 고객님의 개인정보(이름,핸드폰 번호, 계좌번호 등) 입력 시 관리자에 의해 임의 삭제될 수 있습니다.
				</div>
				<div id="indiq_submitbox">
					<button id="indiq_submit" class="indiq_btn">확인</button>
					<button id="indiq_cancel" class="indiq_btn">취소</button>
				</div>
			</div>  -->
			
		</div>
		</div>
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		
	</body>
</html>