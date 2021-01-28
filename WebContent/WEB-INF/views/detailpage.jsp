<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="<%=application.getContextPath()%>/resources/css/detailpage/css_detailpage.css">

</head>
		
	<body>
	
			<div class="content">
			<div id = "detailpage">
	
		<section id="sec01">
			<div id ="div01">
			
				<img width="450px" height="530px" value="pmainimg?pno=${product.pno}"/>
				</div>
			<div id ="div02">
				<h1>${product.pname}</h1>
				<h2>손쉽게 완성하는 근사한 일품요리</h2>
				<h3>${product.pprice}</h3>
				<h4>로그인 후 적립혜택이 적용됩니다.</h4>
				
			<table id ="table01">
				<tr>
					<th > 판매단위 </th>
					<th> 1팩 </th>
				</tr>
				<tr >
					<th> 중량/용량 </th>
					<th> ${product.pweight}</th>
				</tr>
				<tr >
					<th> 조리 인분 </th>
					<th> ${product.pweight} 인분</th>
				</tr>
				<tr>
					<th> 조리시간 </th>
					<th> ${product.pmakingtime} 분</th>
				</tr>
				<tr >
					<th> 포장타입</th>
					<th> 냉동/종이포장</th>
				</tr>
				<tr>
					<th> 알레르기정보</th>
					<th> 대두,밀,우유,아황산유,새우 함유</th>
				</tr>
			
			</table>
			</div>
		</section>
		<section id="sec02">
			<div id ="div03"> 
				<table id = "table02">
					<tr>
						<th><h5>여백</h5></th>
						<th><h6>총 상품금액: &ensp;</h6></th>
						<th><h7>${product.pprice}</h7></th> 
						<th><h71>원</h71></th> 
					</tr>
				</table>

			
			<ul id= "menu01">
			<oi id="oi1"><a href ="tologin">장바구니 담기</a></oi>
			</ul>
			</div>
		</section>
		<section id="sec02">
			<hr>
			<ul id= "menu02">

				<oi >상품 설명</oi>
				<oi >상품 이미지</oi>
				<oi >상세 정보</oi>
				<oi >고객 후기</oi>
				<oi >상품 문의</oi>
			</ul>	
				<div id="div04">
					<img width="1100px" src="pmainimg?pno=${product.pno}"/>
				</div>
			<div id="div05">
				<h8>손쉽게 완성하는 근사한 일품요리</h8>
				<br/>
				<h9>${product.pname}</h9>
				<h10>${product.psubtitle}</h10>
				
				<hr>
				<p>${product.pcontent}</p>
			</div>
			
			<div id="div6">
				<div id="div6_1">	
				<hr>
				<h18>About brand</h18>
				</div>
				<div id="div6_2">	
					<img width="170px" height="70px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic04.PNG"/>
					<ul>
						<oi><h19>세상의 미식을 당신의 식탁으로</h19></oi>
						<br/>
						<oi><h20>밥향기</h20></oi>
					</ul>
					</div>
				<div id="div6_3">	
					
						<article>세상의 미식, 밥향기으로 만나보세요.밥향기은 종합식품기업 LF푸드의 홈다이닝 간편식 브랜드입니다. 탄탄한 기반을 바탕삼아<br/>
						전문적이고 깊이있는 간편식을 제안하지요.전국 2만 곳 이상의 파트너에게서 수집한 메뉴 선호도, 평가 피드백을 자체 R&D센터에서 분석하고<br/>
						고도화하죠. 밥향기의 맛과 품질을 신뢰할 수 있는 이유랍니다. 생활 미식부터 세계 여러 나라의 미식을 모두 아우르는 만큼 메뉴선택지가<br/>
						다양한 것도 매력적이죠. 손쉽게 근사한 요리를 만들고 싶을 때, 밥향기이 함께할게요. </article>
				</div></div>
			
			
				<div id="div8">
					<hr>
					<h25>고객행복센터</h25>
					<p><b>궁금한 점이나 서비스 이용에 불편한 점이 있으신가요?</b>
					<br/>문제가 되는 부분을 사진으로 찍어 아래 중 편하신 방법으로 접수해 주시면 빠르게 도와드리겠습니다.</p>
					<table id = "table03">
						<tr>
							<th><h26>|전화문의 1644-1234</h26></th>
							<th><h26>|카카오톡 문의</h26></th>
							<th><h26>|홈페이지 문의</h26></th> 
						</tr>
						<tr>
							<th>오전 7시~오후 7시(연중무휴)</th>
							<th>오전 7시~오후 7시(연중무휴)</th>
							<th>24시간 접수가능 <br> 로그인>밥향기>1:1문의</th> 
						</tr>
						<tr>
							<th></th>
							<th>카카오톡에서 '밥향기'을 검색한 후 <br>대화창에 문의 및 불편사항을<br>남겨주세요.</th>
							<th>고객센터 운영시간에 순자적으로<br/>답변해드리겠습니다.</th> 
						</tr>
					</table>
					<hr>
				</div>
				<div id="div9">
					<a class="btn_page" id="pre"  href="to_previouspage">이전 페이지</a>
					<a class="btn_page" id="tocategory" href="to_category">카테고리</a>
					<a class="btn_page" id="next" href="to_nextpage">다음 페이지</a>
				</div>
				</div>
			</div>
			
			
		
	</body>
</html>