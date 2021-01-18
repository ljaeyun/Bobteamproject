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
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/seller/goodsDetail.css">
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
					<h1>상품상세보기</h1>
					
					<table>
						<tr align = "center" height="28px" bgcolor="#00FFE4">
							<td colspan="2" align="left"><b>검색옵션</b></td>
						</tr>
						<tr>
							<td  width = "20%"><b>일 자</b></td>
							<td> ...</td>
						</tr>
						
						<tr>
							<td><b>금액대 조회</b></td>
							<td>...</td>
						</tr>
						
						<tr>
							<td><b>검색항목</b></td>
							<td>...</td>
						</tr>
						
						<tr>
							<td><b>선택사항</b></td>
							<td>...</td>
						</tr>
						
						<tr height="28px" bgcolor="#00FFE4">
							<td colspan="2" align="left"><div class = "buttonBox"  align ="right">
									<a class = "btn3" href="">검색하기</a>     <!-- 주 소 수 정-->
								</div></td>
						</tr>
					
					</table>
					
					
					
					<table>
						<tr align= "center" height="70px">
							<td width="3%">선택</td>
							<td width="4%">NO</td>
							<td width="13%">모델명<br>상품코드</td>
							<td width="25%">상품명<br>브랜드명<br>카테고리</td>
							<td width="10%">상품관리</td>
							<td width ="10%">매입처<br>상품그룹</td>
							<td width="10%">제조사<br>원산지</td>
							<td width="7%">제조년도</td>
							<td width="10%">쇼핑몰판매가<br>매입가</td>
							<td width="7%">판매시작일</td>
						</tr>
						<tr align= "center" height="20px">
							<td><input type="checkbox"></td>
							<td>1</td>
							<td>03012102<br>5795135498</td>
							<td>소고기 모둠버섯들깨탕<br>CJ<br>탕</td>
							<td>
								<div class = "buttonBox"  align ="right">
									<a class = "btn2" href="./ItemChange.html">수정</a>     <!-- 주 소 수 정-->
								</div>
							</td>
							<td></td>
							<td>CJ<br>국산</td>
							<td>20-12-30</td>
							<td>24800<br>20000</td>
							<td>21-01-03</td>
						</tr>
					</table>
					
					
			</article>
			
			
		</section>
					
	<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>