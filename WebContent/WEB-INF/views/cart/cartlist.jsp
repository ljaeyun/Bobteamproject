<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8"%>
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
				
				
				
				
				<c:forEach var="cartlist" items="${cartlist}">
						<div id="cart_listeach">
							<div id="checkeach">
								<input type="checkbox" name="checkBox"/>
							</div>
								<a href=""><img src="" style="width:100px;"/></a>
							<div id="pd_info">
								<div id="pname"><a href="">${cartlist.pname}</a></div>
								<div id="pprice">${cartlist.pprice}원</div>
							</div>
							
							
							<form id="form_${cartlist.pno}" name="form_${cartlist.pno}" method="post">
								<div id="pd_quantity_box" class="pd_quantity_box">
									<input type=hidden name="pprice_${cartlist.pno}" value="${cartlist.pprice}"/>
									<div><input type="button" value=" - " onclick="minus(${cartlist.pno})"/></div>
									<div id="quantity"><input type="text" name="amount_${cartlist.pno}" value="${cartlist.cpqn}" readonly></div>
									<div><input type="button" value=" + " onclick="plus(${cartlist.pno})"/></div>	
								</div>
								<div id="pd_price_sum" class="pd_price_sum"><input type="text" name="sum_${cartlist.pno}" value="${cartlist.pprice*cartlist.cpqn}" readonly/>원</div>
							
								<div id="pd_delete"><a href="delete"></a></div>
							</form>
						</div>	
					</c:forEach>
					
					<script>
						
						
						var pprice;
						var amount;
						
						
						function plus(pno) {
							pprice = document["form_" + pno]["pprice_" + pno];
							amount = document["form_" + pno]["amount_" + pno];
							sum = document["form_" + pno]["sum_" + pno];
							amount.value++;
							sum.value = amount.value * pprice.value;
							
							sum_all = document.getElementById("sum_all");
							sum_all.value += parseInt(sum.value);
							sum_all.innerHTML = sum_all.value + "원";
							
							if(document.form.sum_all.value >= 50000) {
								deli = 0;
							} else if(document.form.sum_all.value < 50000) {
								deli = 3000;
							}
							document.getElementById("deli").innerHTML = deli + "원";
							document.getElementById("fianl_price").innerHTML = parseInt(sum_all.value) + deli + "원";
						}
						
						
						
						function minus(pno) {
							pprice = document["form_" + pno]["pprice_" + pno];
							amount = document["form_" + pno]["amount_" + pno];
							sum = document["form_" + pno]["sum_" + pno];
							if (amount.value > 1) {
								amount.value--;
								sum.value = amount.value * parseInt(pprice.value);
								document.getElementById("sum_all").innerHTML = sum.value + "원";
								if(document.form.sum_all.value >= 50000) {
									deli = 0;
								} else if(document.form.sum_all.value < 50000) {
									deli = 3000;
								}
								document.getElementById("deli").innerHTML = deli + "원";
								document.getElementById("fianl_price").innerHTML = parseInt(sum_all.value) + deli + "원";
							}
						}
						
					</script>
					
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
					<div id="member"><a href="orderlist"> 회원 주문하기 ></a></div>
				</div>
			</div>