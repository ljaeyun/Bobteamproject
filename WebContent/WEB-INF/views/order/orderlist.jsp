<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<div id="cart">
				<div id="cart_header">주문하기</div>
				<div id="order_listall">
					<div id="order_list">주문상품</div>	
						<c:forEach var="cart" items="${cartlist}">
							<div id="cart_listeach">
								<div id="checkeach">
									
								</div>
									<a href=""><img src="<%=application.getContextPath()%>" style="width:100px;"/></a>
								<div id="pd_info">
									<div id="pname"><a href="">${cart.pname}</a></div>
								</div>
								<form id="form" name="form" method="post">
									<div id="pd_quantity_box" class="pd_quantity_box">
										<input type=hidden name="pprice" value="${cart.pprice}"/>
										<div id="quantity"><input type="text" name="amount" value=1 onchange="change();">개</div>
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
				<div id="order_list" action="order" method="post">
					<div>주문자 정보</div>
				</div>
				<form>
				<div id="order_info">
					<div>받으실 분</div><input type="text" class="form-control" id="mname" name="mname" value="${memberinfo.mname}">
					<div>휴대폰</div> <input type="text" class="form-control" id="mphone" name="mphone" value="${memberinfo.mphone}">
					<div>이메일</div> <input type="text" class="form-control" id="memail" name="memail" value="${memberinfo.memail}">
					<div>배송지</div> <input type="text" class="form-control" id="oaddress" name="oaddress" value="${memberinfo.maddress}">
				</div>
				<br/><br/><br/><br/>
				<div id="order_list">
					<div>결제 수단</div>
				</div>
				<br/><br/><br/><br/>
				<a type="submit" class="btn btn-dark">결제하기</a>
				</div>
				</form>
</div>