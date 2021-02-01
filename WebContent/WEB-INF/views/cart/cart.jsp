<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/cart/cart.css">
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/cart/cart_none.css">
 		<%-- <script src="<%=application.getContextPath()%>/resources/js/cart/cart.js"></script> --%>
		<script src="https://kit.fontawesome.com/7f16510dcc.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		<div id="wrapper_contents">
		<c:if test="${empty cartlist}">
		<jsp:include page="/WEB-INF/views/cart/cartnone.jsp"/>		
		</c:if>
		<c:if test="${!empty cartlist}">
		<jsp:include page="/WEB-INF/views/cart/cartlist.jsp"/>
		</c:if>			
		</div>	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>