<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" type="text/javascript"></script>
<script src="<%=application.getContextPath()%>/resources/js/cart/order.js"></script>
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/cart/order.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/order/orderlist.css">


<div id="cart">
	<div id="cart_header">주문하기</div>
	<div id="cart_listall">
		<div id="cart_select"></div>	
			<c:forEach var="cartlist" items="${cartlist}">
				<form id="form_${cartlist.pno}" name="form_${cartlist.pno}" method="post">
					<div id="cart_listeach">
						<div id="checkeach">
						</div>
							<img src="../pphoto3?pno=${cartlist.pno}" style="width:150px;"/>
						<div id="pd_info">
							<div id="pname">${cartlist.pname}</div>
							<div id="pprice">${cartlist.pprice}원</div>
						</div>
						
							<div id="pd_quantity_box" class="pd_quantity_box">
								<input type="hidden" name="pprice_${cartlist.pno}" class="pprice" value="${cartlist.pprice}">
								<input type="hidden" name="pno_${cartlist.pno}" class="pno" value="${cartlist.pno}"/>
								<div></div>
								<div id="quantity"><input type="text" class="cpqn" name="amount_${cartlist.pno}" value="${cartlist.cpqn}" readonly>개</div>
								<div></div>
							</div>
							<div id="pd_price_sum" class="pd_price_sum"><input type="text" class="sum" name="sum_${cartlist.pno}" value="${cartlist.pprice*cartlist.cpqn}" readonly/>원</div>
						
							<div id="pd_delete"><a href="delete"></a></div>
					</div>
				</form>	
			</c:forEach>
					
				<div id="cart_price">
					<div id="price">
						<div id="price1">총 상품금액</div>
						<div id="sum_all">원</div>
					</div>
					<div>-</div>
					<div id="discount">
						<div id="price1">총 할인가격</div>
						<div>0원</div>
					</div>
					<div>+</div>
					<div id="delivery">
						<div id="price1">총 배송비</div>
						<div id="deli" class="deli">원</div>
					</div>
					<div>=</div>
					<div id="finalprice">
						<div id="price1">총 예상 결제금액</div>
						<div id="final_price">원</div>
					</div>
				</div>
	</div>
		<!-- 	<div id="orderlist">	
				<div id="order_list_title">주문자정보</div>
				<form action="order" method="post">
					<div id="order_info">
						<div>받으실 분</div><input type="text" class="form-control" id="olist_name" name="mname" value="${memberinfo.mname}" readonly />
						<div>휴대폰</div> <input type="text" class="form-control" id="olist_phone" name="mphone" value="${memberinfo.mphone}" readonly />
						<div>이메일</div> <input type="text" class="form-control" id="olist_email" name="memail" value="${memberinfo.memail}" readonly />
						<div>배송지</div> <input type="text" class="form-control" id="olist_address" name="oaddress" value="${memberinfo.maddress}"/>
					</div>
					<input type="hidden" id="oprice" name="oprice" class="oprice">
					<br/>
					<button type="submit" class="btn btn-dark">결제하기</button>
				</form>
			</div>	 -->
			
			
			
			<div id="orderlist_fn">
				<form id="orderinfo" action="order" method="post">
					<div id="order-personalinfo" class="olist_infobox">
						<div id="opsinfo_title" class="titlebox">주문정보</div>
						<div id="opsinfo_content" class="contentbox">
							<div id="opsinfo_name" class="ops_box">
								<div class="boxes_title">받으실 분</div>
								<div class="col">
									<input type="text" class="form-control" id="olist_name" name="mname" value="${memberinfo.mname}" readonly />
								</div>
							</div>
							<div id="opsinfo_phone" class="ops_box">
								<div class="boxes_title">휴대폰</div> 
								<input type="text" class="form-control" id="olist_phone" name="mphone" value="${memberinfo.mphone}" readonly />
							</div>
							<div id="opsinfo_email" class="ops_box">
								<div class="boxes_title">이메일</div> 
								<input type="text" class="form-control" id="olist_email" name="memail" value="${memberinfo.memail}" readonly />
							</div>
						</div>
					</div>
					<div id="order_other">
						<div id="order-deliinfo" class="olist_infobox">
							<div id="ordinfo_title" class="titlebox">배송정보</div>
							<div id="ordinfo_content"  class="ops_box">
								<div class="boxes_title">배송지</div>
								<input type="text" class="form-control" id="olist_address" name="oaddress" value="${memberinfo.maddress}"/>
							</div>					
						</div>
						<div id="order-paymentinfo" class="olist_infobox">
							<div id="opayinfo_title"  class="titlebox">결제수단</div>
							<div id="opayinfo_content" class="ops_box">
								<div class="boxes_title">결제수단 선택</div>
								<input type="text" class="form-control" id="olist_address" name="oaddress" value="계좌이체"/>
							</div>	
						</div>
					</div>	
					<input type="hidden" id="oprice" name="oprice" class="oprice">
					<div id="buttonbox"> 
						<button id="sub_btn" type="submit">결제하기</button>
					</div>
				</form>
			</div>
			
			
</div>