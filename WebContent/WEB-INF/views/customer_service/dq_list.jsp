<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<meta charset="UTF-8">
	<title>밥향기 :: 1대1문의 입력테스트</title>

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
					      <th class="not_list_date">답변</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<c:forEach var="directq" items="${list}">
						  	<tr>
						      <td class="not_list_num">${directq.qno}</td>
						      <td class="not_list_title"><a class="text-decoration-none" href="directqread?qno=${directq.qno}">${directq.qtitle}</a></td>
						      <td class="not_list_date">${directq.qanswer}</td>
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