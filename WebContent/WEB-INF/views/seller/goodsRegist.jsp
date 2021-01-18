<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <%@ page import="java.util.*" %>
  <%@ page import="java.text.SimpleDateFormat" %>
  
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/seller/goodsRegist.css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/include/header.jsp"/>

	<section>
			<nav>
				<ul>
					<li><a id="menu" href ="<%=application.getContextPath()%>/seller/goodsRegist">상품 등록</a></li>    <!-- 주 소 수 정-->
					<li><a> &nbsp</a></li>
					<li><a id="menu" href ="<%=application.getContextPath()%>/seller/goodsRevise">상품 수정</a></li>    <!-- 주 소 수 정-->
					<li><a> &nbsp</a></li>
					<li><a id="menu" href ="<%=application.getContextPath()%>/seller/goodsDetail">상품 상세조회</a></li>    <!-- 주 소 수 정-->
				</ul>
				
				<div id="ClientC">
					<p><u> 밥향기 고객센터 </u><br>
					<br>
					카카오톡 : <b> 친구찾기 > 쿡킷 </b><br>
					이메일 : <b>cookcook@CookKit.com </b><br>
					전화 : 070-1234-5678 <br>
					시간 : <b>월~금 : 09 : 00 ~ 18 : 00 </b><br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>공휴일 휴무</b>
					</p>
				</div>
			</nav>
			
			<article>
					<h1>상품등록</h1>
						<form method="post" enctype="multipart/form-data" name="myForm" action="goodsupload">
							<table>
								<tr align = "center" >
									<td width = "120px" height = "30px"> <b>상품명 </b></td>
									<td colspan = "5"><input type="text" name="gname" size="20" style="width:98%; border:0;"/></td>
								</tr>
								<tr align = "center">
									<td height = "30px"> <b>판매가</b> </td>
									<td colspan = "3" width="50px"><input type="text" name="gcost" size="20" style="width:98%; border:0;"/></td>
									<td>원</td>
								</tr>
								
								<tr align = "center">
									<td height = "220px"> <b>상품이미지 등록</b> </td>
									<td colspan = "4" width="50px">
										
										<input type="file" name="gimg"/>
										
										<div align = "center">
											<p font-size = "1px">
												-쇼핑몰에 기본으로 보여지는 상품이미지를 등록합니다. <br>
												-대표이미지 등록 시 , 상세, 목록, 작은목록, 축소 이미지에 자동 리사이징 됩니다. <br>
												-권장이미지 : 500px * 500px / 5M 이하 / gif, png, jpg(jpeg)
											</p>
										 <div>
									</td>
								</tr>
								
								<tr align = "center" >
									<td width = "100px" height = "40px"> <b>상품요약설명</b></td>
									<td colspan = "5"><input type="text" name="gsummary" size="20" style="width:98%; border:0;"/></td>					
								</tr>
								<tr align = "center"> 
									<td height = "400px"><b> 상품상세설명 </b></td>
									<td colspan="5" rowspan="4"><textarea name="gdetail" rows="20" style= "width:98%; border : 0; resize:none;"></textarea></td>
								</tr>
								<tr>
									
								
									
								</tr>
							</table>
						<a class="btn" onclick="javascript:document.myForm.submit();" type="submit">등록</a>
							<!-- <a class = "btn" href="">등록</a>					 주 소 수 정 -->
						
					
						</form>
			</article>
			
			
		</section>
		
		<!-- 상품 등록 , 취소 버튼 -->
		
					<div style="margin-bottom:15px;font-family: 'Noto Sans KR Medium';" class = "buttonBox" align ="right">
						      <!-- 주 소 수 정-->					
						<a class = "btn" id="can" href="">취소</a>            <!-- 주 소 수 정-->
					</div>
					
			<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>