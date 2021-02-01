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
<body>	
	
	
		<div>적립금</div>
	
			<input class="user_id" type="text" value="${pur.mid}" readonly class="form-control">
			<input class="user_pcount" type="text" value="${pur.mpurchasecount}" readonly class="form-control">
			<input class="user_psum" type="text" value="${pur.mpurchasesum}" readonly class="form-control">
			<input class="user_psmoney" type="text" value="${pur.msavemoney}" readonly class="form-control">
		
		
		<div>쿠폰</div>
			
</body>

</html>