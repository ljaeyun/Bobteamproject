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
	<title>밥향기 :: 공지사항세부</title>

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
					   공지사항
				</div>
					 <form name="noticereadform" action="noticeread" method="post">
						  <div class="form-group">
							    <label for="ntitle">제목</label>
							    <input type="text" value="${noticeread.ntitle}" readonly class="form-control" id="ntitle" name="ntitle"/>
						  </div>
						  <div class="form-group">
							    <label for="ncontent">내용</label>
							    <textarea class="form-control" id="ncontent" name="ncontent" rows="4" cols="50" readonly>${noticeread.ncontent}</textarea>
						  </div>
						  <a class="btn btn-primary" href="cs_notice">목록</a>
					    	 <!--  <c:if test="${sessionMid == board.bwriter}">
							  <a class="btn btn-warning" href="boardupdate?bno=${board.bno}">수정</a>
							  <a class="btn btn-danger" href="boarddelete?bno=${board.bno}">삭제</a>
						 	  </c:if>  -->
					 </form>
		 	</div>
		 </div>
		
		
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		
	</body>
</html>