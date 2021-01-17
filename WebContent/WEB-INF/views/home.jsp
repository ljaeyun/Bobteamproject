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
<title>한국인은 밥심 밥향기</title>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
</head>
<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		
		<div id="wrapper_content">
			<div id="img0">
				<img src="<%=application.getContextPath()%>/resources/img/intro_cookit_2.jpg" width="100%"/>
			</div>
			<div id="text">
				<div id="intro1">
					<p id="title">
					Brand Promise
					</p>
					<p id="semititle">
					‘집밥’이라는 단어에는 가족을 <br/>
					이어주는 특별한 힘이 있습니다.
					</p>
					<p id="contents">
					 하지만 바쁘게 살고 있는 현대인들에게 매일 정성스럽게 집밥을 준비하는 것은 결코 쉽지 않은 일이죠.
					그래서 우리는 생각했습니다. <br/><br/> “사람들이 요리하고 식사하는 방식이 바뀐다면 집밥이 조금 더 행복해지지 않을까? ”<br/><br/>
					힘 안들이고 직접 요리할 수 있도록, 맛있는 음식으로 가족을 식탁으로 부르도록, 제철 재료로 맛을 낸 특별식을 집밥으로 즐길 수 있도록, 
					가족과의 행복한 시간만 남도록 모든 사람들이 셰프가 아니더라도 셰프처럼. <br/> 정성스럽게 준비된 식재료로 만든 요리키트로 쉽고 즐겁게 매일, 
					가족의 식탁에 특별한 집밥을 올려놓을 수 있게 
					<br/>
					<br/>
					그래서 시작합니다.
					</p>
				</div>
			</div>
			<div id="img1">
				<img src="<%=application.getContextPath()%>/resources/img/intro_cookit_0.jpg" width="100%"/>
			</div>
			<div id="text">
				<div id="intro2">
					<p id="title"> 매일 찾아오는 셰프가 만든 특별한 메뉴 </p>
					<p id="contents">
					국내 및 글로벌 특급 호텔 경력<br/>
					최고의 셰프 12인의 메뉴 개발<br/>
					국내 및 글로벌 특급 호텔 경력을 가진 한식, 양식 각 분야 최고의 셰프 12인이 메뉴를 고민합니다.<br/>
					식감을 살리는 재료의 손질, 육수, 소스부터 메뉴의 지역적 특색까지 고려하는 셰프들의 깊은 고민을 통해<br/>
					쿡킷의 새로운 메뉴가 만들어집니다.<br/>
					셰프의 노하우로 일상적인 집밥이 새로워지도록, 외식으로 먹던 특별식이 오늘 나의 집밥이 되도록,<br/>
					누구나 쉽게 특별한 집밥을 요리할 수 있도록 매일 연구합니다. </p>
				</div>
			</div>
			<div id="img2">
				<img src="<%=application.getContextPath()%>/resources/img/intro_cookit_3.jpg" width="70%"/>
			</div>
			<div id="text">
				<div id="intro3">
					<p id="title"> 구독으로 매일 다른 메뉴를 만나보세요. </p>
					<p id="contents">
					맛있는 밥은 먹고 싶지만 무엇을 먹고 싶은지 모르시겠나요?<br/>
					매번 다른 밀키트를 주문해야하는 과정도 귀찮으신가요?<br/><br/>
					이제는 밥도 구독할 시간입니다.
				</div>
			</div>
		</div>
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		
	</body>
</html>