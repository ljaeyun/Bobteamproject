<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/cart/cart.css">
	<script src="<%=application.getContextPath()%>/resources/js/cart/cart.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		<div id="wrapper_contents">
			<div id="cart">
				<div id="cart_header">장바구니</div>
				<div id="cart_listall">
					<div id="cart_select">
						<input type="checkbox" id="checkall" name="checkall" onclick="checkAll()"/>
						<a href="">전체 선택</a>
						<a href="">선택 삭제</a>
					</div>	
					
					<div id="cart_listeach">
						<div id="checkeach">
							<input type="checkbox" name="checkBox"/>
						</div>
							<a href="..\detailpage\랍스터.html"><img src="..\img\d_랍스타.png" style="width:100px;"/></a>
						<div id="pd_info">
							<div id="pd_name"><a href="..\detailpage\랍스터.html">랍스터 갈릭버터 치즈 오븐구이</a></div>
							<div id="pd_price">19,900원</div>
						</div>
						
						
						<form id="form" name="form" method="get">
							<div id="pd_quantity_box" class="pd_quantity_box">
								<input type=hidden name="sell_price" value=19900/>
								<div><input type="button" value=" - " onclick="minus()"/></div>
								<div id="quantity"><input type="text" name="amount" value=1 size="3" onchange="change();"></div>
								<div><input type="button" value=" + " onclick="plus()"/></div>	
							</div>
							<div id="pd_price_sum" class="pd_price_sum"><input type="text" name="sum" value="19900" size="11" readonly/>원</div>
						</form>
						
						<div id="pd_delete"><a href=""><i class="fas fa-times"></i></a></div>
						
					</div>	
					
					
					
					<div id="cart_price">
						<div id="price">
							<div id="price1">총 상품금액</div>
							<div id="sum_all">19900원</div>
						</div>
						<div>-</div>
						<div id="discount">
							<div id="price1">총 할인가격</div>
							<div>0원</div>
						</div>
						<div>+</div>
						<div id="delivery">
							<div id="price1">총 배송비</div>
							<div id="deli">3000원</div>
						</div>
						<div>=</div>
						<div id="finalprice">
							<div id="price1">총 예상 결제금액</div>
							<div id="fianl_price">22900원</div>
						</div>
					</div>
				</div>
				<div id="cart_order">
				<!-- 	<div id="nonmember">비회원 주문하기 > </div> -->
					<div id="member"><a href="..\login\login.html"> 회원 주문하기 ></a></div>
				</div>
			</div>
		
		</div>	
		
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>