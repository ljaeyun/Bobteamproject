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
		<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
		

<meta charset="UTF-8">
<title>밥향기 :: FAQ</title>

		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_customer_service_faq.css">

		<script src="<%=application.getContextPath()%>/resources/js/customer_service/customer_service.js"> </script>

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
				<div id="category_02" class="cs_cat"><a href="cs_notice"><b>공지사항</b></a></div>
			</div>
			
			<div id="faq_wrap">
							
				<div id="faq_category_wrap">
					<div id="faq_category_title"><b>유형별 자주묻는질문</b></div>
					<div id="faq_category_box">
						<div class="faq_cat" onclick="faqlistBox()">전체</div>
						<div class="faq_cat" onclick="faqlistBoxCat(fcatid=1)">배송</div>
						<div class="faq_cat" onclick="faqlistBoxCat(fcatid=2)">취소</div>
						<div class="faq_cat" onclick="faqlistBoxCat(fcatid=3)">주문</div>
				
					</div>
				</div>
				
	<script>
		function faqlistBox(){
			$.ajax({
				url:"faqlistbox",
				method:"get",
				success:function(data){
					$("#faq_listbox").html(data);
				}
			});
		};
	</script>
	
	<script>
		function faqlistBoxCat(){
			$.ajax({
				url:"faqlistcatbox",
				method:"get",
				data: {fcatid:fcatid},
				success:function(data){
					$("#faq_listbox2").html(data);
				}
			});
		};
	</script>
	
			<div id="faq_listbox"></div>
			<div id="faq_listbox2"></div>
				
		</div>
			
		<div id="indiq_banner">
			<div id="banner_image">
				<img width="50px" src="<%=application.getContextPath()%>/resources/img/ask_icon.png"></img>
			</div>
			<div id="indiq_banner_text">FAQ로 해결되지 않으셨다면, 궁금한 점을 직접 문의해주세요. </div>
			<div id="indiq_banner_btn"> 
				<a href="javascript:indi1()">1대1문의 <br/>작성</a>
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
	
		</div>
		</div>
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		
	</body>
</html>