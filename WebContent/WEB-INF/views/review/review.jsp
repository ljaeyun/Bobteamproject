<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
	<head>

		<meta charset="UTF-8">
		
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/review/cs_review.css">
			<link href='https://fonts.googleapis.com/css?family=Noto Sans KR' rel='stylesheet'>
			<link href='https://fonts.googleapis.com/css?family=Noto Sans KR Black' rel='stylesheet'>
			<link href='https://fonts.googleapis.com/css?family=Noto Sans KR Light' rel='stylesheet'>
			<link href='https://fonts.googleapis.com/css?family=Noto Sans KR Medium' rel='stylesheet'>
			<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
		
		<title>밥향기 :: 리뷰</title>
	

		
	</head>
	
	
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		
		<div id="wrapper_contents">
			<div id="review_wrapper">
			
					<script>
						const backhome () => {windows.location.href="<%=application.getContextPath()%>/home"};
					</script>
				<div id="rewview_ready" onclick="backhome()">
					<img src="../img/site_ready.jpg" width="600px" height="700px" />
				</div>
			
			</div>
		
		</div>
		
			<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	</body>
</html>