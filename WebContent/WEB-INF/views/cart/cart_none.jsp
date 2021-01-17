<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>
	<head>
	<link href='https://fonts.googleapis.com/css?family=Noto Sans KR' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Noto Sans KR Black' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Noto Sans KR Light' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Noto Sans KR Medium' rel='stylesheet'>
	<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
	<script src="https://kit.fontawesome.com/7f16510dcc.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/cart/cart_none.css">
		<meta charset="UTF-8">
		<title>밥향기 :: 장바구니</title>
	</head>
	
	
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		
		<div id="wrapper_contents">
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
		</div>
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	</body>
</html>