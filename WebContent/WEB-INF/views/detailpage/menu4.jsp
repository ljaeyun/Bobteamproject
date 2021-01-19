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
			
				<img width="450px" height="530px" src="<%=application.getContextPath()%>/resources/img/detailpage/궁중떡볶음/궁중_1.jpg"/>
				</div>
			<div id ="div02">
				<h1>소고기와 떡볶이의 조화<br/>궁중 떡볶음</h1>
				<h2>손쉽게 완성하는 근사한 일품요리</h2>
				<h3>19,900원</h3>
				<h4>로그인 후 적립혜택이 적용됩니다.</h4>
				
			<table id ="table01">
				<tr>
					<th > 판매단위 </th>
					<th> 1팩 </th>
				</tr>
				<tr>
					<th> 중량/용량 </th>
					<th> 530g</th>
				</tr>
				<tr>
					<th> 배송구분 </th>
					<th> 샛별배송/택배배송</th>
				</tr>
				<tr >
					<th> 포장타입</th>
					<th> 냉동/종이포장</th>
				</tr>
				<tr>
					<th> 알레르기정보</th>
					<th> 대두,밀,우유,아황산유,새우 함유</th>
				</tr>
				<tr id = "tr01">
					<th> 구매수량</th>
					<th id = "on"> - &ensp; 1 &ensp; +</th>
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
						<th><h7>19,900</h7></th> 
						<th><h71>원</h71></th> 
					</tr>
				</table>

			
			<ul id= "menu01">
			<oi id="oi1"><a href ="tologin">장바구니 담기</a></oi>
				<oi id="oi2">늘 사는 것</oi>
				<oi id="oi3">재입고 알림</oi>
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
					<img width="1100px" src="<%=application.getContextPath()%>/resources/img/detailpage/궁중떡볶음/궁중_2.jpg"/>
				</div>
			<div id="div05">
				<h8>간단하게 만드는 일품요리</h8>
				<br/>
				<h9>조선왕조의 애찬 <br/>수라상 궁중 떡볶음</h9>
				
				<hr>
				<p>특별한 모임을 염두해 두고 있는 분이라면,밥향기 한우 갈릭버터 치즈 오븐구이를 주목해주세요.
				특출난 요리 실력이 없어도 근사한
				<br/>한우 요리를 완성할 수 있어요. 어획 후 자숙하여 급속 냉동한 제품으로 조리가 매우 간단하답니다
				. 가위로 쓱쓱 손질한 뒤 동봉된 갈릭버터
				<br/>소스와 모짜렐라 치즈를 뿌려 조리하면 고소한 풍미의 한우가 금세 완성되죠.캐나다산 제철 한우만을 선별하여 
				신선하고 쫄깃한 식감<br/>이 살아있답니다. 몸통은 물론 집게까지 살이 통통하게 오른 한우를 보내드리니,
				 식탁위 특별함을 더해보세요.</p>
			</div>
			<div id="div06">
				<h10>영상으로 미리 만나는 한우<br/>수라상 궁중 떡볶음</h10>
				<img width="1100px"  src="<%=application.getContextPath()%>/resources/img/detailpage/궁중떡볶음/궁중_3.jpg"/>
			</div>
			<div id="div07">
				<hr >
				<h11>밥향기's Point</h11>
			</div>
				<div id="div07_1">
					<div id= "Ingredients">
					<img width="100px" height="80px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic01.PNG"/>
					<h11>재료와 성분 Ingredient</h11>
					<ul>
					<li>캐나다산 한우</li>
					</ul>
					</div>
					<div id= "Process">
					<img width="100px" height="80px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic02.PNG"/>
					<h12>생산 유통 과정 Process</h12>
					<ul>
						<li>HACCP인증 시설에서 위생적으로 생산</li>
						<li>어획 후 한 번 익혀 급속 냉동한 한우</li>
					</ul>
					</div>
					</div>
					<div id= "Recommendation">
					<img width="100px" height="80px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic03.PNG"/>
					<h13>활용법 Recommendation</h13>
					<ul>
					<li>간편하고 근사한 홈파티용 한우</li>
					<li>특별함을 더하는 캠핑요리</li>
					<li>가나쉬를 곁들여 더욱 풍성하게</li>
					</ul>
				</div>
		</section>
			<div id="div08">
				<hr>
				<h14>밥향기's Pick</h14>
				<img width="1100px" src="<%=application.getContextPath()%>/resources/img/detailpage/궁중떡볶음/궁중_4.jpg">
			</div>
			<div id="div09">
				<h15>수라상 궁중 떡볶음</h15>
				<ul>
					<li><b>구성:</b>①한우(450g), ②모짜렐라 치즈(35g), ③갈릭버터치즈(35g)</li>
					<li><b>특징:</b>속이 꽉찬 캐나다산 한우를 자숙한 뒤 냉동해 손질과 조리가 편리한 제품이에요. 모짜렐라 치즈와 갈릭버터 소스가<br/>
					동봉되어 있어 간편하게 버터 치즈구이를 즐길 수 있어요</li>
					<li><b>보관법:</b>-18˚C이하에서 냉동보관하세요.개봉후 가급적 빨리 섭취하세요</li>
				</ul>
			</div>
			<div id="div10">
				<h16>밥향기's Tip!</h16>
					<div id="div10_1">
					<img width="900px" src="<%=application.getContextPath()%>/resources/img/detailpage/궁중떡볶음/궁중_5.jpg"/>
			
					<h17>손질법을 확인하세요</h17>
					<ul>
						<li>포장을 제외한 한우를 흐르는 물에 10분간 씻어주세요</li>
						<li>한우를 뒤집어 꼬리부터 머리까지 반으로 잘라주세요</li>
						<li>한우의 살부분에 갈릭버터 소스를 바르고 모짜렐라 치즈를 뿌려주세요.</li>
					</ul>
					<h17>에어프라이어로 간편하게 조리하세요</h17>
					<ul>
						<li>토핑된 한우를 에어프라이어에 넣고 180˚C에서 약 12분간 조리하세요 </li>
						<li>한우 한마리를 조리하기 위해서는 6L이상의 대용량 에어프라이어가 필요해요.</li>
					</ul>
					<h17>팬프라이어로 깊은 풍미를 살려 조리하세요</h17>
					<ul>
						<li>중불로 달군 펜에 버터나 오일을 둘러주세요 </li>
						<li>토핑된 한우를 프라이펜에 올려 뚜겅을 덮은 뒤 중불에서 7~8분정도 조리해주세요.</li>
					</ul>
					</div>
					
					<div id="div10_2">
					<img width="900px"  src="<%=application.getContextPath()%>/resources/img/detailpage/궁중떡볶음/궁중_6.jpg"/>
					<h17>완성된 한우는 이렇게 드세요.</h17>
					<ul>
						<li>몸통부분은 포크와 나이프를 이용해 잘라드세요. 한 번 자숙한 제품이라 껍질과 살이 쉽게 분리됩니다.</li>
						<li>집게다리는 작은 다리를 역방향으로 눌러 껍질을  벗긴 뒤 살전체를 손으로 살살 꺼내 드세요.</li>
						<li>한우의 내장은 볶음밥 재료로 활용하세요. 감칠맛나는 별미를 즐길 수 있어요</li>
					</ul>
					</div>
			</div>
			<div id="div11">
				<div id="div11_1">	
				<hr>
				<h18>About brand</h18>
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
					
						<article>세상의 미식, 밥향기으로 만나보세요.밥향기은 종합식품기업 LF푸드의 홈다이닝 간편식 브랜드입니다. 탄탄한 기반을 바탕삼아<br/>
						전문적이고 깊이있는 간편식을 제안하지요.전국 2만 곳 이상의 파트너에게서 수집한 메뉴 선호도, 평가 피드백을 자체 R&D센터에서 분석하고<br/>
						고도화하죠. 밥향기의 맛과 품질을 신뢰할 수 있는 이유랍니다. 생활 미식부터 세계 여러 나라의 미식을 모두 아우르는 만큼 메뉴선택지가<br/>
						다양한 것도 매력적이죠. 손쉽게 근사한 요리를 만들고 싶을 때, 밥향기이 함께할게요. </article>
				</div></div>
			<div id="div12">
				<hr>
				<h21>밥향기's Image</h21>
				
				<img width="1100px" height="600px" src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic05.PNG"/>
				<h22>수라상 궁중 떡볶음</h22>
				<hr>
			</div>
			<div id="div13">
				
				<h23>WHY 밥향기</h23>
					<div id= "div13_1">
						<div id= "div13_11">
							<img width="50px"  src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic06.PNG"/>
							<br/>
							<h24>깐깐한 상품위원회</h24>
							<p>나와 내 가족이 먹고 쓸 상품을 고르는<br/>마음으로 매주 상품을 직접 먹어보고<br/>경험해보고 성분, 맛, 안정성 등 다각도의<br/>기준을 통과한 상품만을 판매합니다.</p>
						</div>
						<div id= "div13_12">
							<img width="50px"  src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic07.PNG"/>
							<br/>
							<h24>차별화된 밥향기상품</h24>
							<p>전국각지와 해외의 훌륭한 생산자가 <br/>믿고 선택하는 파트너 밥향기<br/>2000여개가 넘는 밥향기 단독브랜드 <br/>온리 밥향기 상품을 믿고 만나보세요</p>
						</div>
							<div id= "div13_13">
							<img width="50px"  src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic08.PNG"/>
							<br/>
							<h24>신선한 풀 콜드 체인 배송</h24>
							<p>온라인 배송 최초로 산지에서 문앞까지<br/>상온, 냉동, 냉장 상품을 분리 포장 후<br/>최적의 온도를 유지하는 냉장 배송 시스템 <br/>풀콜드체인으로 상품을 신선하게 배송해드립니다.</p>
						</div>
					</div>
					<div id= "div13_2">
						<div id= "div13_21">
							<img width="50px"  src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic09.PNG"/>
							<br/>
							<h24>고객, 생산자를 위한 최선의 가격</h24>
							<p>매주 대형마트와 주요 온라인 마트의 가격<br/>변동상황을 확인해 신선제품 품질을 <br/>타협하지 않는 선에서 최선의 가격으로<br/>합리적으로 판매한니다.</p>
						</div>
						<div id= "div13_22">
							<img width="50px"  src="<%=application.getContextPath()%>/resources/img/detailpage/c_pic10.PNG"/>
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
				</div>
					<div id="div15">
					<a class="btn_page" id="pre"  href="to_previouspage">이전 페이지</a>
					<a class="btn_page" id="tocategory" href="to_category">카테고리</a>
					<a class="btn_page" id="next" href="to_nextpage">다음 페이지</a>
				</div>
				

		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>