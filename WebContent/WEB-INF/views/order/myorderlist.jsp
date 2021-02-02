<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<br/>
		<h4><b>주문 내역</b></h4>
			<hr style="height:5px; background-color:black">
			<div>
				<br/>
				<table class="table table-hover" style="width:900px; text-align:center;">
					<thead>
						<tr>
							<th>주문번호</th>
							<th>배송지정보</th>
							<th>주문금액</th>
							<th>주문상태</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="orderlist" items="${orderlist}" >
							<tr id="tr-${orderlist.ono}" onclick="showOrderItem(${orderlist.ono})">
								<td>No.${orderlist.ono}</td>
								<td>${orderlist.oaddress}</td>
								<td>${orderlist.oprice}원</td>
								<td>${orderlist.sname}</td>
							</tr>
						</c:forEach>						
					</tbody>
				</table>
				<script>
					function showOrderItem(ono) {
						var html = "<tr id='tr-oi-" + ono + "'><td colspan=5></td></tr>"
						if($("#tr-oi-" + ono).length == 0) {
							$("#tr-"+ono).after(html);
							
							$.ajax({
								url:"orderitems",
								data: {ono:ono},
								success: function(data) {
									$("#tr-oi-" + ono + ">td").html(data);
								}
							});
							
						} else {
							$("#tr-oi-"+ono).remove();
						}
					}
				</script>
	
			</div>
		