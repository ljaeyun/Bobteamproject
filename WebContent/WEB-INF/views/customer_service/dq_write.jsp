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
			
						<div class="alert alert-primary" role="alert">
						   1대1 문의 작성
						</div>
						<form enctype="multipart/form-data" name="directqwriteform" action="directqwrite" method="post">
						  <div class="form-group">
							    <label for="qtitle">제목</label>
							    <input type="text" class="form-control" id="qtitle" name="qtitle">
							    <small class="form-text text-muted">제목을 작성해주세요.</small>
						  </div>
						  <div class="form-group">
							    <label for="qcontent">내용</label> <br/>
							    <textarea class="form-control" id="qcontent" name="qcontent" rows="4" cols="50"></textarea>
						 		<small class="form-text text-muted">개인정보를 작성하시면 삭제될 수 있습니다.</small>
						  </div>
						  
						  <button class="btn btn-primary">제출</button>
						  <a class="btn btn-primary" href="customer_service_faq">취소</a>
						</form>
			
				
			
			</div>
		</div>
		
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	</body>
</html>