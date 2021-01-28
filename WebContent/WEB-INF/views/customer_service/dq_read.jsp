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
				
					<div class="alert alert-primary" role="alert">
						   게시물 보기
					</div>
					<form name="dqreadform" action="dqread" method="post">
					  <div class="form-group">
						    <label for="qtitle">제목</label>
						    <input type="text" value="${directq.qtitle}" readonly class="form-control" id="qtitle" name="qtitle">
					  </div>
					  <div class="form-group">
						    <label for="qcontent">내용</label>
						    <textarea class="form-control" id="qcontent" name="qcontent" rows="4" cols="50" readonly>${directq.qcontent}</textarea>
					  </div>
					  <div class="form-group">
						    <label for="qanswer">답변</label>
						    <textarea class="form-control" id="qanswer" name="qanswer" rows="4" cols="50" readonly>${directq.qanswer}</textarea>
					  </div>
					 <a class="btn btn-primary" href="dq_list">목록</a>
					 <!--  <c:if test="${sessionMid == board.bwriter}">
						  <a class="btn btn-warning" href="boardupdate?bno=${board.bno}">수정</a>
						  <a class="btn btn-danger" href="boarddelete?bno=${board.bno}">삭제</a>
					  </c:if>  -->
			</div>
		</div>
		
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		
	</body>
</html>