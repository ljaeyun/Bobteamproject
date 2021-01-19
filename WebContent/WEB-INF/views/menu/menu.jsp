<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>

		<meta charset="UTF-8">
		
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/menu/cs_menu.css">
		
		<title>밥향기 :: 메뉴</title>
				
		
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
						<div id="image_1" class="cat_img" > <a href="menu1">
							<img height=100% width=100% src="<%=application.getContextPath()%>/img/detailpage/랍스터/랍스터_01.PNG"/></a>
						</div>
						<div id="productinfobox_1" class="productinfobox">
							<div class ="infoline_1"><a href="menu1">2인분 | 1시간</a></div>
							<div class ="infoline_2" ><a href="menu1">랍스터 갈릭버터 치즈 오븐구이</a></div>
							<div class ="infoline_3" ><a href="menu1">19,900원</a></div> 
							<span class = "sp_cart"><a href="login1"><img width="25px" height="25px" src="<%=application.getContextPath()%>/resources/img/shopping_cart.png"/></a></span>
						</div>
					</div>
					
					<div id="infobox_2" class="infobox">
						<div id="image_2" class="cat_img"  ><a href="menu2">
							<img height=100% width=100% src="<%=application.getContextPath()%>/img/detailpage/굴떡국/굴떡국_1.jpg"/></a>
						</div>
						<div id="productinfobox_2" class="productinfobox">
							<div class ="infoline_1"  ><a href="menu2">1인분 | 1시간</a></div>
							<div class ="infoline_2" ><a href="menu2">메생이 굴떡국</a></div>
							<div class ="infoline_3" ><a href="menu2">19,800원</a></div>
							<span class = "sp_cart" ><a href="login1"><img width="25px" height="25px" src="<%=application.getContextPath()%>/img/shopping_cart.png"/></a></span>				
						</div>
					</div>	
					
					<div id="infobox_3" class="infobox">
						<div id="image_3" class="cat_img"  ><a href="menu3">
							<img height=100% width=100% src="<%=application.getContextPath()%>/img/detailpage/폭찹스테이크/폭찹_01.jpg" /></a>
						</div>
						<div id="productinfobox_3" class="productinfobox">
							<div class ="infoline_1" ><a href="menu3">3인분 | 20분</a></div>
							<div class ="infoline_2" ><a href="menu3">폭찹스테이크</a></div>
							<div class ="infoline_3" ><a href="menu3">24,800원</a></div>
							<span class = "sp_cart" ><a href="login1"><img width="25px" height="25px" src="<%=application.getContextPath()%>/img/shopping_cart.png"/></a></span>						
						</div>
					</div>	
				</div>
				
				<div id="productline_2" class="productline">
					<div id="infobox_1" class="infobox">
						<div id="image_1" class="cat_img" ><a href="menu4">
							<img height=100% width=100% src="<%=application.getContextPath()%>/img/detailpage/궁중떡볶음/궁중_1.jpg"  /></a>
						</div>
						<div id="productinfobox_1" class="productinfobox">
							<div class ="infoline_1" ><a href="menu4">2인분 | 1시간</a> </div>
							<div class ="infoline_2" ><a href="menu4">궁중떡볶음</a></div>
							<div class ="infoline_3" ><a href="menu4">21,800원</a></div>
							<span class = "sp_cart" ><a href="login1"><img width="25px" height="25px" src="<%=application.getContextPath()%>/img/shopping_cart.png"/></a></span>
													
						</div>
					</div>
					
					<div id="infobox_2" class="infobox">
						<div id="image_2" class="cat_img"  ><a href="menu5">
							<img height=100% width=100% src="<%=application.getContextPath()%>/img/detailpage/깐쇼새우/깐쇼새우_1.jpg" /></a>
						</div>
						<div id="productinfobox_2" class="productinfobox">
							<div class ="infoline_1" ><a href="menu5">3인분 | 15분 </a></div>
							<div class ="infoline_2" ><a href="menu5">칠리 깐쇼새우</a></div>
							<div class ="infoline_3" ><a href="menu5">25,800원</a></div>
							<span class = "sp_cart" ><a href="login1"><img width="25px" height="25px" src="<%=application.getContextPath()%>/img/shopping_cart.png"/></a></span>			
						</div>
					</div>	
					
					<div id="infobox_3" class="infobox">
						<div id="image_3" class="cat_img" ><a href="menu6">
							<img height=100% width=100% src="<%=application.getContextPath()%>/img/detailpage/만두전골/만두전골_1.jpg"  /></a>
						</div>
						<div id="productinfobox_3" class="productinfobox">
							<div class ="infoline_1" ><a href="menu6">3인분 | 40분 </a></div>
							<div class ="infoline_2" ><a href="menu6">만두전골</a></div>	
							<div class ="infoline_3" ><a href="menu6">23,800원</a></div>
							<span class = "sp_cart" ><a href="login1"><img width="25px" height="25px" src="<%=application.getContextPath()%>/img/shopping_cart.png"/></a></span>					
						</div>
					</div>
				</div>
				<div id="productline_3" class="productline">
					<div id="infobox_1" class="infobox">
							<div id="image_1" class="cat_img"  ><a href="menu7">
								<img height=100% width=100% src="<%=application.getContextPath()%>/img/detailpage/목살스테이크/목살스테이크_1.jpg" /></a>
							</div>
							<div id="productinfobox_1" class="productinfobox">
								<div class ="infoline_1" ><a href="menu7">3인분 | 20분</a></div>
								<div class ="infoline_2" ><a href="menu7">목살 스테이크 원플레이트</a></div>
								<div class ="infoline_3" ><a href="menu7">25,800원</a></div>
							<span class = "sp_cart" ><a href="login1"><img width="25px" height="25px" src="<%=application.getContextPath()%>/img/shopping_cart.png"/></a></span>
														
							</div>
						</div>
						
						<div id="infobox_2" class="infobox">
							<div id="image_2" class="cat_img"  ><a href="menu8">
								<img height=100% width=100% src="<%=application.getContextPath()%>/img/detailpage/버섯들깨탕/버섯들깨탕_1.jpg" /></a>
							</div>
							<div id="productinfobox_2" class="productinfobox">
								<div class ="infoline_1" ><a href="menu8">3인분 | 35분</a></div>
								<div class ="infoline_2" ><a href="menu8">버섯 들깨탕</a></div>	
								<div class ="infoline_3" ><a href="menu8">24,800원</a></div>
							<span class = "sp_cart" ><a href="login1"><img width="25px" height="25px" src="<%=application.getContextPath()%>/img/shopping_cart.png"/></a></span>		
							</div>
						</div>	
						
						<div id="infobox_3" class="infobox">
							<div id="image_3" class="cat_img"  ><a href="menu9">
								<img height=100% width=100% src="<%=application.getContextPath()%>/img/detailpage/두루치기/두루치기_1.jpg" /></a>
							</div>
							<div id="productinfobox_3" class="productinfobox">
								<div class ="infoline_1" ><a href="menu9">3인분 | 30분</a></div>
								<div class ="infoline_2" ><a href="menu9">두부 두루치기</a></div>	
								<div class ="infoline_3" ><a href="menu9">34,800원</a></div>
							<span class = "sp_cart" ><a href="login1"><img width="25px" height="25px" src="<%=application.getContextPath()%>/img/shopping_cart.png"/></a></span>					
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