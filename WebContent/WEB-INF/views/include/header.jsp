<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/header.css">
<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>

<div id="wrapper_header">
			 <header>
				 <div id="div1">
					<div id="br"></div>
				 	<div id="mark">

				 		<!-- <a href="..\homepage\homepage.html"><img src="../img/logo.png" width="100px"/></a> -->

				 		<a href="<%=application.getContextPath()%>/"><img src="<%=application.getContextPath()%>/resources/img/logo.png" width="100px"/></a>
				 	</div>
				 	<div id="login">
				 			<ul id="ul1">
				 				<li><a href="<%=application.getContextPath()%>/createId">회원가입</a></li> 
				 				<c:if test="${loginStatus==null }">
									<li><a href="<%=application.getContextPath()%>/login">로그인</a></li>
								</c:if>
								<c:if test="${loginStatus!=null }">
									<li><a href="<%=application.getContextPath()%>/account/logout">로그아웃</a></li>
								</c:if>
								<li><a href="<%=application.getContextPath()%>/customer_service_faq">고객센터</a></li>
							</ul>
				 	</div>
			 	</div>
			 	<div id="div2">
			 		<div id="div3">
			 			<div id="menu">
							 <ul id="ul2">
								<li><a href="<%=application.getContextPath()%>/">밥향기 소개</a></li>
								<li><a href="<%=application.getContextPath()%>/menu">메뉴</a></li>
								<li><a href="<%=application.getContextPath()%>/review">리뷰</a></li>
								<li><a href="<%=application.getContextPath()%>/event">이벤트</a></li>
							</ul>
					 	</div>
			 			
						<div id="search">
						<i class="fa fa-search" aria-hidden="true"></i>
						 	<input id="src1" type="text" placeholder="검색" />
						 			<!-- <div id="src1" input=>
						 				검색
						 			</div> -->
						 </div>
						 
						<div id="icon">
							<a href="<%=application.getContextPath()%>/myinfo"><i class="fa fa-user" aria-hidden="true"></i> 마이페이지</a>
							<a href="<%=application.getContextPath()%>/cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i> 장바구니</a>
						</div>
						
							
					</div>
			 	</div>
			</header>
		</div>