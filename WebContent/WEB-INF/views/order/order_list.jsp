<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="cart">
				<div id="cart_header">주문하기</div>
				<div id="order_listall">
					<div id="order_list">주문상품</div>	
						<c:forEach var="cart" items="${cartlist}">
							<div id="cart_listeach">
								<div id="checkeach">
									<input type="checkbox" name="checkBox"/>
								</div>
									<a href=""><img src="<%=application.getContextPath()%>" style="width:100px;"/></a>
								<div id="pd_info">
									<div id="pname"><a href="">${cart.pname}</a></div>
									<div id="pprice">${cart.pprice}원</div>
								</div>
								<form id="form" name="form" method="post">
									<div id="pd_quantity_box" class="pd_quantity_box">
										<input type=hidden name="pprice" value="${cart.pprice}"/>
										<div><input type="button" value=" - " onclick="minus()"/></div>
										<div id="quantity"><input type="text" name="amount" value=1 onchange="change();"></div>
										<div><input type="button" value=" + " onclick="plus()"/></div>	
									</div>
									<div id="pd_price_sum" class="pd_price_sum"><input type="text" name="sum" value="${cart.pprice}" readonly/>원</div>
								</form>
								<div id="pd_delete"><a href="delete"></a></div>
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
				<br/><br/><br/><br/>	
				<div id="order_list">
					<div>주문자 정보</div>
				</div>
				<div>받으실 분</div> <div></div>
				<div>휴대폰</div> <div></div>
				<div>이메일</div> <div></div>
				<div>배송지</div> <div></div>
				<br/><br/><br/><br/>	
				<div id="order_list">
					<div>결제 수단</div>
				</div>
				<br/><br/><br/><br/>
				<button>결제하기</button>
				</div>
</div>