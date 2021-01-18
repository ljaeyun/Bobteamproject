<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>

		<meta charset="UTF-8">
		
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/menu/cs_menu.css">
		
		<title>밥향기 :: 메뉴</title>
				
		<script>
			
			const menu1Click = () => {window.location.href="<%=application.getContextPath()%>/detailpage/랍스터"};
			const menu2Click = () => {window.location.href="<%=application.getContextPath()%>/detailpage/굴떡국"};
			const menu3Click = () => {window.location.href="<%=application.getContextPath()%>/detailpage/폭찹스테이크"};
			const menu4Click = () => {window.location.href="<%=application.getContextPath()%>/detailpage/궁중떡볶음"};
			const menu5Click = () => {window.location.href="<%=application.getContextPath()%>/detailpage/깐쇼새우"};
			const menu6Click = () => {window.location.href="<%=application.getContextPath()%>/detailpage/닭한마리"};
			const menu7Click = () => {window.location.href="<%=application.getContextPath()%>/detailpage/목살스테이크"};
			const menu8Click = () => {window.location.href="<%=application.getContextPath()%>/detailpage/버섯들깨탕"};
			const menu9Click = () => {window.location.href="<%=application.getContextPath()%>/detailpage/두루치기"};
			
			const loginClick = () => {window.location.href="<%=application.getContextPath()%>/account/login"};
		</script>
		
	</head>
	
	
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		
		<div id="wrapper_contents">
		<div id="menu_wrapper">
			<div id="search_inform">
				<h1 id="search_big">밥향기 메뉴</h1>
				<h4 id="search_det">신선한 상품을 만나보세요.</h4>
			</div>	
		
			<div id="search_line">
				
			</div>	
		
			
			
			<div id="productlist_total">
			
				<div id="productline_1" class="productline">
			
					<div id="infobox_1" class="infobox">
						<div id="image_1" class="cat_img" onclick="menu1Click()">
							<img height=100% width=100% src="../img/detailpage/랍스터/랍스터_01.PNG"/>
						</div>
						<div id="productinfobox_1" class="productinfobox">
							<div class ="infoline_1" onclick="menu1Click()">2인분 | 1시간</div>
							<div class ="infoline_2" onclick="menu1Click()">랍스터 갈릭버터 치즈 오븐구이</div>
							<div class ="infoline_3" onclick="menu1Click()">19,900원</div>
							<span class = "sp_cart" onclick="loginClick()"><img width="25px" height="25px" src="../img/shopping_cart.png"/></span>			
						</div>
					</div>
					
					<div id="infobox_2" class="infobox">
						<div id="image_2" class="cat_img"  onclick="menu2Click()">
							<img height=100% width=100% src="../img/detailpage/굴떡국/굴떡국_1.jpg"/>
						</div>
						<div id="productinfobox_2" class="productinfobox">
							<div class ="infoline_1"  onclick="menu2Click()">1인분 | 1시간</div>
							<div class ="infoline_2" onclick="menu2Click()">메생이 굴떡국</div>
							<div class ="infoline_3" onclick="menu2Click()">19,800원</div>
							<span class = "sp_cart" onclick="loginClick()"><img width="25px" height="25px" src="../img/shopping_cart.png"/></span>				
						</div>
					</div>	
					
					<div id="infobox_3" class="infobox">
						<div id="image_3" class="cat_img"  onclick="menu3Click()">
							<img height=100% width=100% src="../img/detailpage/폭찹스테이크/폭찹_01.jpg" />
						</div>
						<div id="productinfobox_3" class="productinfobox">
							<div class ="infoline_1" onclick="menu3Click()">3인분 | 20분</div>
							<div class ="infoline_2" onclick="menu3Click()">폭찹스테이크</div>
							<div class ="infoline_3" onclick="menu3Click()">24,800원</div>
							<span class = "sp_cart" onclick="loginClick()"><img width="25px" height="25px" src="../img/shopping_cart.png"/></span>						
						</div>
					</div>	
				</div>
				
				<div id="productline_2" class="productline">
					<div id="infobox_1" class="infobox">
						<div id="image_1" class="cat_img" onclick="menu4Click()">
							<img height=100% width=100% src="../img/detailpage/궁중떡볶음/궁중_1.jpg"  />
						</div>
						<div id="productinfobox_1" class="productinfobox">
							<div class ="infoline_1" onclick="menu4Click()">2인분 | 1시간 </div>
							<div class ="infoline_2" onclick="menu4Click()">궁중떡볶음</div>
							<div class ="infoline_3" onclick="menu4Click()">21,800원</div>
							<span class = "sp_cart" onclick="loginClick()"><img width="25px" height="25px" src="../img/shopping_cart.png"/></span>
													
						</div>
					</div>
					
					<div id="infobox_2" class="infobox">
						<div id="image_2" class="cat_img"  onclick="menu5Click()">
							<img height=100% width=100% src="../img/detailpage/깐쇼새우/깐쇼새우_1.jpg" />
						</div>
						<div id="productinfobox_2" class="productinfobox">
							<div class ="infoline_1" onclick="menu5Click()">3인분 | 15분 </div>
							<div class ="infoline_2" onclick="menu5Click()">칠리 깐쇼새우</div>	
							<div class ="infoline_3" onclick="menu5Click()">25,800원</div>
							<span class = "sp_cart" onclick="loginClick()"><img width="25px" height="25px" src="../img/shopping_cart.png"/></span>			
						</div>
					</div>	
					
					<div id="infobox_3" class="infobox">
						<div id="image_3" class="cat_img" onclick="menu6Click()">
							<img height=100% width=100% src="../img/detailpage/만두전골/만두전골_1.jpg"  />
						</div>
						<div id="productinfobox_3" class="productinfobox">
							<div class ="infoline_1" onclick="menu6Click()">3인분 | 40분 </div>
							<div class ="infoline_2" onclick="menu6Click()">만두전골</div>	
							<div class ="infoline_3" onclick="menu6Click()">23,800원</div>
							<span class = "sp_cart" onclick="loginClick()"><img width="25px" height="25px" src="../img/shopping_cart.png"/></span>					
						</div>
					</div>
				</div>
				<div id="productline_3" class="productline">
					<div id="infobox_1" class="infobox">
							<div id="image_1" class="cat_img"  onclick="menu7Click()">
								<img height=100% width=100% src="../img/detailpage/목살스테이크/목살스테이크_1.jpg" />
							</div>
							<div id="productinfobox_1" class="productinfobox">
								<div class ="infoline_1" onclick="menu7Click()">3인분 | 20분</div>
								<div class ="infoline_2" onclick="menu7Click()">목살 스테이크 원플레이트</div>
								<div class ="infoline_3" onclick="menu7Click()">25,800원</div>
							<span class = "sp_cart" onclick="loginClick()"><img width="25px" height="25px" src="../img/shopping_cart.png"/></span>
														
							</div>
						</div>
						
						<div id="infobox_2" class="infobox">
							<div id="image_2" class="cat_img"  onclick="menu8Click()">
								<img height=100% width=100% src="../img/detailpage/버섯들깨탕/버섯들깨탕_1.jpg" />
							</div>
							<div id="productinfobox_2" class="productinfobox">
								<div class ="infoline_1" onclick="menu8Click()">3인분 | 35분</div>
								<div class ="infoline_2" onclick="menu8Click()">버섯 들깨탕</div>		
								<div class ="infoline_3" onclick="menu8Click()">24,800원</div>
							<span class = "sp_cart" onclick="loginClick()"><img width="25px" height="25px" src="../img/shopping_cart.png"/></span>		
							</div>
						</div>	
						
						<div id="infobox_3" class="infobox">
							<div id="image_3" class="cat_img"  onclick="menu9Click()">
								<img height=100% width=100% src="../img/detailpage/두루치기/두루치기_1.jpg" />
							</div>
							<div id="productinfobox_3" class="productinfobox">
								<div class ="infoline_1" onclick="menu9Click()">3인분 | 30분</div>
								<div class ="infoline_2" onclick="menu9Click()">두부 두루치기</div>	
								<div class ="infoline_3" onclick="menu9Click()">34,800원</div>
							<span class = "sp_cart" onclick="loginClick()"><img width="25px" height="25px" src="../img/shopping_cart.png"/></span>					
							</div>
						</div>
					</div>
				
			</div>
			
			
			
		
			<div id="page_num">
				<a href="<%=application.getContextPath()%>/menu/menu">
					<div class="pnum_text">처음</div>
				</a>
				<a href="<%=application.getContextPath()%>/menu/menu">
					<div class="pnum_text">이전</div>
				</a>
				<a href="<%=application.getContextPath()%>/menu/menu">
					<div class="pnum_num">1</div>
				</a>
				<a href="">
					<div class="pnum_num">2</div>
				</a>
				<a href="">
					<div class="pnum_num">3</div>
				</a>
				<a href="">
					<div class="pnum_text">다음</div>
				</a>
				<a href="">
					<div class="pnum_text">맨끝</div>
				</a>
			</div>
			
	</div>	
		</div>
		
			<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	</body>
</html>