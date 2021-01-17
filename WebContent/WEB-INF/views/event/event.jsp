<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>		
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/event/cs_event.css">
</head>
<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
		<div id="wrapper">
			<div id="search_inform">
				<h1 id="search_big">이벤트</h1>
				<h4 id="search_det">매일 색다른 이벤트를 만나보세요.</h4>
			</div>	
			<div id="search_line"> </div>
			<div id="event"> </div>
				<a class="btn" href="forword_tabmenu" >
					<img  id="btn1" width=1200px  src="<%=application.getContextPath()%>/resources/img/eventpage/grade.PNG" /></a>
				<a class="btn"	href ="forword_friends" >
					<img id="btn2" width=1200px  src="<%=application.getContextPath()%>/img/eventpage/friends.PNG"/></a>
				<button class="btn" >
					<img id="btn3" width=1200px  src="<%=application.getContextPath()%>/resources/img/eventpage/kakao.PNG" onmouseover="this.src='<%=application.getContextPath()%>/resources/img/eventpage/kakao_finish.PNG'" onmouseout="this.src='<%=application.getContextPath() %>/resources/img/eventpage/kakao.PNG'"/>
					</button>
				<button class="btn" >
					<img id="btn4" width=1200px  src="<%=application.getContextPath()%>/resources/img/eventpage/don.PNG" onmouseover="this.src='<%=application.getContextPath()%>/resources/img/eventpage/don_finish.PNG'" onmouseout="this.src='<%=application.getContextPath() %>/resources/img/eventpage/don.PNG'"/>
				</button>
				<button class="btn">
					<img id="btn5" width=1200px  src="<%=application.getContextPath()%>/resources/img/eventpage/gift.PNG" onmouseover="this.src='<%=application.getContextPath() %>/resources/img/eventpage/gift_finish.PNG'" onmouseout="this.src='<%=application.getContextPath() %>/resources/img/eventpage/gift.PNG'"/>
				</button>
				<button class="btn">
					<img id="btn6" width=1200px  src="<%=application.getContextPath()%>/resources/img/eventpage/nut.PNG" onmouseover="this.src='<%=application.getContextPath() %>/resources/img/eventpage//nut_finish.PNG'" onmouseout="this.src='<%=application.getContextPath() %>/resources/img/eventpage/nut.PNG'"/>
				</button>
				<button class="btn">
					<img id="btn7" width=1200px  src="<%=application.getContextPath()%>/resources/img/eventpage/health.PNG" onmouseover="this.src='<%=application.getContextPath() %>/resources/img/eventpage/health_finish.PNG'" onmouseout="this.src='<%=application.getContextPath() %>/resources/img/eventpage/health.PNG'"/>
				</button>
			
				
			</div>
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>