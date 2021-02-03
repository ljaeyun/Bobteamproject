<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/order/orderdone.css">
		<script src="https://kit.fontawesome.com/7f16510dcc.js" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
		<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>밥향기 :: 주문완료</title>

</head>
<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		
		<div id="wrapper_contents">
			<div id="cart_header">고객님의 주문이 완료되었습니다.</div>
		
		
			<div class="orderdone_box">
				<div class="orderdone_cat">주문이 잘 되었는지 확인하려면?</div>
				<div class="orderdone_btn">
					<a class="btn btn-outline-dark btn-sm" href="<%=application.getContextPath()%>/myinfo">마이페이지 이동</a>
				</div>
			</div>
			<div class="orderdone_box">
				<div class="orderdone_cat"> 다른 제품들도 궁금하다면?</div>
				<div class="orderdone_btn">
					<a class="btn btn-outline-dark btn-sm" href="<%=application.getContextPath()%>/menu">쇼핑 계속하기</a>
				</div>
			</div>
		
		</div>	
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>