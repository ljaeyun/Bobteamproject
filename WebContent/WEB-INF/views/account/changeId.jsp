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

		<label for="mid">아이디</label>
		<input type="text" value="${mem.mid}" readonly name="mid">
				
		<label for="mname">이름</label>
		<input type="text" value="${mem.mname}" name="mname">
		
		<label for="memail">이메일</label>
		<input type="text" value="${mem.memail}" name="email">
		
		<label for="mphone">휴대전화</label>
		<input type="text" value="${mem.mphone}" name="email">
			
		<label for="maddress">주소</label>
		<input type="text" value="${mem.maddress}" name="email">
		
		<a button class="btn btn-info" id="changebtn" href="changeIdupdate">수정</a>
</body>

</html>