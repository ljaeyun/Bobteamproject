<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<meta charset="UTF-8">
	<title>밥향기 :: 1대1문의 수정</title>

	<%-- <link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_customer_service_notice.css"> --%>
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_dqlist.css">
	</head>
	
	<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>

		<div id="wrapper_content">
			<div id="cs_wrap">
				<div id="title_box">
					<c:if test='${ADMIN!="admin"}'>
						<div id="title"><b>나의 정보</b></div>
					</c:if>
					<c:if test='${ADMIN=="admin"}'>
						<div id="title"><b>[관리] 1:1 문의 답변</b></div>
					</c:if>
				</div>
			
						<div class="alert alert-secondary" role="alert">
						   1대1 문의 수정
						</div>
						<form enctype="multipart/form-data" name="directqupdateform" action="directqupdate" method="post">
						  <input type="hidden" name="qno" value="${directq.qno}"/>
						  <div class="form-group">
							    <label for="qtitle">제목</label>
							    <input type="text" value="${directq.qtitle}" class="form-control" id="qtitle" name="qtitle">
							    <small class="form-text text-muted">수정할 제목을 작성해주세요.</small>
						  </div>
						  <div class="form-group">
							    <label for="qcontent">내용</label> <br/>
							    <textarea class="form-control" id="qcontent" name="qcontent" rows="4" cols="50">${directq.qcontent}</textarea>
						 		<small class="form-text text-muted">수정할 내용을 작성해주세요.</small>
						  </div>
						  
						 <c:if test='${ADMIN!="admin"}'>
						 	<input type="hidden" name="qanswer" value="${directq.qanswer}"/>
						  </c:if>
						  
						 <c:if test='${ADMIN=="admin"}'>
							    <div class="form-group">
								    <label for="qanswer">답변 작성</label>
								    <textarea class="form-control" id="qanswer" name="qanswer" rows="4" cols="50">${directq.qanswer}</textarea>
							 	</div>
						  </c:if>
						  
						  <c:if test='${ADMIN!="admin"}'>
						  	<button class="btn btn-outline-secondary">수정</button>
						  	<a class="btn btn-outline-secondary" href="myinfo">취소</a>
						  </c:if>
						  
						  <c:if test='${ADMIN=="admin"}'>
						   	<button class="btn btn-outline-secondary">답변</button>
						   	<a class="btn btn-outline-secondary" href="directqlist">취소</a>
						  </c:if>
						</form>
			
				
			
			</div>
		</div>
		
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	</body>
</html>