<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- 		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>		 -->
	<meta charset="UTF-8">
	<title>밥향기::홈페이지</title>
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/detailpage/cs_detailpage.css">
	</head>
	<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
			
	
		<div id = "detailpage">
	
		<section id="sec01">
			<div id ="div01">
			
				<img width="450px" height="530px" src="pphoto1?pno=${product.pno}"/>
				</div>
			<div id ="div02">
				<h1>${product.pname}</h1>
				<h2>손쉽게 완성하는 근사한 일품요리</h2>
				<h3> ${product.pprice}원</h3>
				<h4>로그인 후 적립혜택이 적용됩니다.</h4>
				
			<table id ="table01">
				<tr>
					<th > 판매단위 </th>
					<th>1팩</th>
				</tr>
				<tr >
					<th> 중량/용량 </th>
					<th>${product.pweight}g</th>
				</tr>
				<tr>
					<th> 취식 기준 </th>
					<th> ${product.pamount}</th>
				</tr>
				<tr >
					<th> 조리시간</th>
					<th>  ${product.ptime} 분</th>
				</tr>
				<tr >
					<th> 조리난이도 </th>
					<th> ${product.pdifficulty}</th>
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
				<oi id="oi1"><a href ="cart/addcart">장바구니 담기</a></oi>
			</ul>
			</div>
		</section>
		<section id="sec02">
			<hr>
	
				<div id="div04">
					<img width="1100px" src="pphoto2?pno=${product.pno}"/>
				</div>
			<div id="div05">
				<h8>손쉽게 완성하는 근사한 일품요리</h8>
				<br/>
				<h9>${product.pname}</h9>
				
				<hr>
				<p>${product.pcontent}</p>
			</div>
		<div id="div11">
				<div id="div11_1">	
				<hr>
				<h18>About Bland</h18>
				</div>
				<div id="div11_2">	
					<img width="170px" height="70px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic04.PNG"/>
					<ul>
						<oi><h19>세상의 미식을 당신의 식탁으로</h19></oi>
						<br/>
						<oi><h20>밥향기</h20></oi>
					</ul>
					</div>
				<div id="div11_3">	
					
						<article>세상의 미식, 모노키친으로 만나보세요.모노키친은 종합식품기업 LF푸드의 홈다이닝 간편식 브랜드입니다. 탄탄한 기반을 바탕삼아<br/>
						전문적이고 깊이있는 간편식을 제안하지요.전국 2만 곳 이상의 파트너에게서 수집한 메뉴 선호도, 평가 피드백을 자체 R&D센터에서 분석하고<br/>
						고도화하죠. 모노키친의 맛과 품질을 신뢰할 수 있는 이유랍니다. 생활 미식부터 세계 여러 나라의 미식을 모두 아우르는 만큼 메뉴선택지가<br/>
						다양한 것도 매력적이죠. 손쉽게 근사한 요리를 만들고 싶을 때, 모노키친이 함께할게요. </article>
				</div></div>
			<div id="div12">
				<hr>
				<h21>밥향기's Image</h21>
				
				<img width="1100px" src="pphoto3?pno=${product.pno}"/>
				
			</div>
			<div id="div13">
				
				<h23>WHY 밥향기</h23>
					<div id= "div13_1">
						<div id= "div13_11">
							<img width="50px" height="50px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic06.PNG"/>
							<br/>
							<h24>깐깐한 상품위원회</h24>
							<p>나와 내 가족이 먹고 쓸 상품을 고르는<br/>마음으로 매주 상품을 직접 먹어보고<br/>경험해보고 성분, 맛, 안정성 등 다각도의<br/>기준을 통과한 상품만을 판매합니다.</p>
						</div>
						<div id= "div13_12">
							<img width="50px" height="50px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic07.PNG"/>
							<br/>
							<h24>차별화된 밥향기상품</h24>
							<p>전국각지와 해외의 훌륭한 생산자가 <br/>믿고 선택하는 파트너 밥향기<br/>2000여개가 넘는 밥향기 단독브랜드 <br/>온리 밥향기 상품을 믿고 만나보세요</p>
						</div>
							<div id= "div13_13">
							<img width="50px" height="50px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic08.PNG"/>
							<br/>
							<h24>신선한 풀 콜드 체인 배송</h24>
							<p>온라인 배송 최초로 산지에서 문앞까지<br/>상온, 냉동, 냉장 상품을 분리 포장 후<br/>최적의 온도를 유지하는 냉장 배송 시스템 <br/>풀콜드체인으로 상품을 신선하게 배송해드립니다.</p>
						</div>
					</div>
					<div id= "div13_2">
						<div id= "div13_21">
							<img width="50px" height="50px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic09.PNG"/>
							<br/>
							<h24>고객, 생산자를 위한 최선의 가격</h24>
							<p>매주 대형마트와 주요 온라인 마트의 가격<br/>변동상황을 확인해 신선제품 품질을 <br/>타협하지 않는 선에서 최선의 가격으로<br/>합리적으로 판매한니다.</p>
						</div>
						<div id= "div13_22">
							<img width="50px" height="50px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic10.PNG"/>
							<br/>
							<h24>환경을 생각하는 지속가능한 유통</h24>
							<p>친환경유통에서 부터 생산자가 상품에만 <br/>집중할 수 있는 직매입 유통구조까지 <br/>지속가능한 유통을 고민하여 구성원 <br/>모두가 더 나아질 수 있도록 노력합니다.</p>
						</div>
					</div>
				</div>
				<div id="div14">
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
					<div id="div15">
					<a class="btn_page" id="pre"  href="to_previouspage1">이전 페이지</a>
					<a class="btn_page" id="tocategory" href="to_category1">카테고리</a>
					<a class="btn_page" id="next" href="to_nextpage1">다음 페이지</a>
				</div>
				</div>
	
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>