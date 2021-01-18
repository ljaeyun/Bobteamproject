<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/cart/cart.css">				
<div id="cart">
	<div id="cart_header">장바구니</div>
	<div id="cart_listall">
		<div id="cart_select">
			<input type="checkbox" id="checkall">
			<a href="">전체 선택</a>
			<a href="">선택 삭제</a>
		</div>	
		
		<div id="cart_none">
				<div id="none1">!</div>
				<div id="none2">장바구니에 담긴 상품이 없습니다.</div>
				<div id="none3">다양한 메뉴들을 만나보세요.</div>
				<div id="none4"><a href="..\menu\menu.html">메뉴 보러 가기  ></a></div>
		</div>	
		
		
	</div>
	
</div>