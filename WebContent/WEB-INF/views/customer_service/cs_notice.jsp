<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>

<html>
<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
		<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
		
<meta charset="UTF-8">
<title>밥향기 :: 공지사항</title>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_customer_service_notice.css">

	

</head>
<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		
		<div id="wrapper_content">
			<div id="cs_wrap">
			<div id="title_box">
				<div id="title"><b>고객센터</b></div>
			</div>
			
			<div id="category_box">
				<div id="category_01" class="cs_cat"><a href="customer_service_faq"><b>FAQ</b></a></div>
				<div id="category_02" class="cs_cat"><a href="customer_service_notice"><b>공지사항</b></a></div>
			</div>
			
			
				
				<div>
					<table id="notice_table" class="table table-bordered">
					  <thead>
					    <tr id="notice_title">
					      <th class="not_list_num">번호</th>
					      <th class="not_list_title">제목</th>
					      <th class="not_list_date">날짜</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<c:forEach var="notice" items="${list}">
						  	<tr>
						      <td class="not_list_num">${notice.nno}</td>
						      <td class="not_list_title"><a class="text-decoration-none">${notice.ntitle}</a></td>
						      <td class="not_list_date"><fmt:formatDate value="${notice.ndate}" pattern="yyyy.MM.dd"/></td>
					  		</tr>
					  	</c:forEach>
					  </tbody>
					 </table>
				</div> 
		
			</div>
			
		</div>
		
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		
	</body>
</html>