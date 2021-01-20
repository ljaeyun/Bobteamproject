<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/cart/cart.css">
<div id="cart">
				<div id="cart_header">장바구니</div>
				<div id="cart_listall">
					<div id="cart_select">
						<input type="checkbox" id="checkall" name="checkall" onclick="checkAll()"/>
						<a href="">전체 선택</a>
						<a href="">선택 삭제</a>
					</div>	
					
					
					<c:forEach var="cartList" items="${cartList}">
					
						<div id="cart_listeach">
							<div id="checkeach">
								<input type="checkbox" name="checkBox"/>
							</div>
								<a href="detailpage/menu${cartList.pd_num}"><img src="<%=application.getContextPath()%>/resources/img/detailpage/menu${cartList.pd_num}.jpg" style="width:100px;"/></a>
							<div id="pd_info">
								<div id="pd_name"><a href="detailpage/menu${cartList.pd_num}">${cartList.pd_name}</a></div>
								<div id="pd_price">${cartList.pd_price}원</div>
							</div>
							
							
							<form id="form" name="form" method="get">
								<div id="pd_quantity_box" class="pd_quantity_box">
									<input type=hidden name="sell_price" value=${cartList.pd_price}/>
									<div><input type="button" value=" - " onclick="minus()"/></div>
									<div id="quantity"><input type="text" name="amount" value=${cartList.pd_qn} size="3" onchange="change();"></div>
									<div><input type="button" value=" + " onclick="plus()"/></div>	
								</div>
								<div id="pd_price_sum" class="pd_price_sum"><input type="text" name="sum" value="${cartList.pd_price}" readonly/>원</div>
							</form>
							
							<div id="pd_delete"><a href="delete"><i class="fas fa-times"></i></a></div>
							
						</div>	
					
					</c:forEach>
					
					
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
			<!--	 	<div id="nonmember">비회원 주문하기 > </div> -->
					<div id="member"><a href="login"> 회원 주문하기 ></a></div>
				</div>
			</div>