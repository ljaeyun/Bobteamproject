<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
	<head>

		<meta charset="UTF-8">
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/menu/cs_menu.css">
		
		<title>밥향기 :: 메뉴</title>
				
		
	</head>
	
	
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
		
		<div id="wrapper_contents">
		<div id="menu_wrapper">
			<div id="search_inform">
				<h1 id="search_big">밥향기 메뉴</h1>
				<h4 id="search_det">신선한 상품을 만나보세요.</h4>
			</div>	
		
			<div id="search_line">
				
			</div>	

			<div id="productlist_total">
				<div>
				<div id="productline" class="productline">
					<c:forEach var="product" items="${list}">
					<div id="infobox" >
						<div id="image" class="cat_img" > <a href="detailpage?pno=${product.pno}">
							<img height=300px width=250px src="pphoto1?pno=${product.pno}"/></a>
						</div>
						<div id="productinfobox" class="productinfobox">
							<div class ="infoline_1"><a class="class" href="detailpage?pno=${product.pno}">${product.pamount} | ${product.ptime}</a></div>
							<div class ="infoline_2" ><a class="class" href="detailpage?pno=${product.pno}">${product.pname}</a></div>
							<div class ="infoline_3" ><a class="class" href="detailpage?pno=${product.pno}">${product.pprice}원</a></div> 
							<span class = "sp_cart"><a class="class" href="<%=application.getContextPath()%>/login">
							<img width="25px" height="25px" src="../img/shopping_cart.png"/></a></span>
						</div>
					</div>
				</c:forEach>
			</div>
			</div>
		</div>	
		</div>
		<div id="page_num">
				<a class="btn btn-outline-secondary btn-sm mr-2"
					href="menu?pageNo=1">처음</a>
				<c:if test="${pager.groupNo > 1}">
					<a class="btn btn-outline-secondary btn-sm mr-2"
						href="menu?pageNo=${pager.startPageNo - 1}">이전</a>
				</c:if>
				<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
					<c:if test="${i == pager.pageNo}">
						<a class="btn btn-secondary btn-sm mr-2" href="menu?pageNo=${i}">${i}</a>
					</c:if>
					<c:if test="${i != pager.pageNo}">
						<a class="btn btn-outline-secondary btn-sm mr-2" href="menu?pageNo=${i}">${i}</a>
					</c:if>
				</c:forEach>
				<c:if test="${pager.groupNo < pager.totalGroupNo}">
					<a class="btn btn-outline-secondary btn-sm mr-2" href="menu?pageNo=${pager.endPageNo + 1}">다음</a>
				</c:if>
					<a class="btn btn-outline-secondary btn-sm mr-2" href="menu?pageNo=${pager.totalPageNo}">맨끝</a>
			</div>
		</div>
			<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	</body>
</html>