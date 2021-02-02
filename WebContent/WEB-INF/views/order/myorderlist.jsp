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
							<th>상세보기</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="orderlist" items="${orderlist}" >
						<tr>
							<td>${orderlist.ono}</td>
							<td>${orderlist.oaddress}</td>
							<td>${orderlist.oprice}</td>
							<td>${orderlist.sname}</td>
							<td>></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
	
			</div>
		
</body>

</html>