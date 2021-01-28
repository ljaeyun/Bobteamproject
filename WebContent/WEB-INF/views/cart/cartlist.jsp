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
				
			
				
				
				<c:forEach var="cart" items="${cartlist}">
						<div id="cart_listeach">
							<div id="checkeach">
								<input type="checkbox" name="checkBox"/>
							</div>
								<a href=""><img src="" style="width:100px;"/></a>
							<div id="pd_info">
								<div id="pname"><a href="">${cart.pname}</a></div>
								<div id="pprice">${cart.pprice}원</div>
							</div>
							
							
							<form id="form" name="form" method="post">
								<div id="pd_quantity_box" class="pd_quantity_box">
									<input type=hidden name="pprice_${cart.pno}" value="${cart.pprice}"/>
									<div><input type="button" value=" - " onclick="minus(${cart.pno})"/></div>
									<div id="quantity"><input type="text" name="amount_${cart.pno}" value=1 onchange="change();"></div>
									<div><input type="button" value=" + " onclick="plus(${cart.pno})"/></div>	
								</div>
								<div id="pd_price_sum" class="pd_price_sum"><input type="text" name="sum_${cart.pno}" value="${cart.pprice}" readonly/>원</div>
							</form>
							
							<div id="pd_delete"><a href="delete"></a></div>
							
						</div>	
					</c:forEach>
					
					<script>
						checkAll = () => {
						   	if(document.getElementById("checkall").checked==true){ 
						         for(var i=0;i<${cartlist}.length;i++) document.getElementsByName("checkBox")[i].checked=true; 
							}
						    if(document.getElementById("checkall").checked==false){
						         for(var i=0;i<${cartlist}.length;i++) document.getElementsByName("checkBox")[i].checked=false;  
						    }
						}
						
						var pprice;
						var amount;
						
						plus = (int pno) => {
							pprice = document.form.pprice_${pno};
							amount = document.form.amount_${pno};
							sum = document.form.sum_${pno};
							amount.value++;
							sum.value = amount.value * parseInt(pprice.value);
							
						}
						
						
					</script>
					
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
					<div id="member"><a href="orderlist"> 회원 주문하기 ></a></div>
				</div>
			</div>