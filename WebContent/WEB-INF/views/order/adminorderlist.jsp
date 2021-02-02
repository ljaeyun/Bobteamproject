<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
		
<meta charset="UTF-8">
<title>밥향기 :: 나의정보</title>		
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/account/myinfo.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_customer_service_faq.css">
</head>	
<body>	<br/>
		
		<h4><b>주문 관리<i class="bi bi-caret-left-fill"></i></b></h4>
			<hr style="height:5px; background-color:black">
			<div>
				<br/>
				<table class="table table-hover" style="width:900px; text-align:center;">
					<thead>
						<tr>
							<th>주문번호</th>
							<th>주문자 이름</th>
							<th>주문자 연락처</th>
							<th>배송지정보</th>
							<th>주문금액</th>
							<th>주문상태</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="orderlist" items="${orderlist}" >
							<tr id="tr-${orderlist.ono}" onclick="showOrderItem(${orderlist.ono})">
								<td>No.${orderlist.ono}</td>
								<td>${orderlist.mname}</td>
								<td>${orderlist.mphone}</td>
								<td>${orderlist.oaddress}</td>
								<td>${orderlist.oprice}원</td>
								<td>
									<c:if test="${orderlist.sname}!='결제완료'">
										<a href="javascript:minus(${orderlist.ono})">< </a>
									</c:if>
											${orderlist.sname}
									<c:if test="${orderlist.sname}!='배송완료'">
										<a href="javascript:plus(${orderlist.ono})"> ></a>
									</c:if>
								</td>
							</tr>
						</c:forEach>						
					</tbody>
				</table>
				<script>
					function showOrderItem(ono) {
						var html = "<tr id='tr-oi-" + ono + "'><td colspan=7></td></tr>"
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
</body>

</html>