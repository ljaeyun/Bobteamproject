<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
	
<meta charset="UTF-8">
<title>밥향기 :: 나의정보</title>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/account/myinfo.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_customer_service_faq.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_dqlist.css">

<script type="text/javascript" src="<%=application.getContextPath()%>/resources/js/account/myinfo.js"></script>

	<script>
		function dqBox(){
			$.ajax({
				url:"dqdone",
				method:"get",
				success:function(data){
					$("#directqBox").html(data);
					$("#infomain").hide();
					/* $("#moneyCoupon").hide(); */
					$("#directqBox").show();
					$("#orderlist").hide();
					$("#adminorderlist").hide();
					$("#changeId").hide();
					$("#rewrite").hide();
					$("#regist").hide();
					$("#orderlist").hide();
				}
			});
		};
	</script>
	<script>
/* 		function mcBox(){
			$.ajax({
				url:"moneycoupon",
				method:"get",
				success:function(data){
					$("#moneyCoupon").html(data);
					$("#infomain").hide();
					$("#moneyCoupon").show();
					$("#directqBox").hide();
					$("#orderlist").hide();
					$("#adminorderlist").hide();
					$("#changeId").hide();
				}
			});
		}; */
	</script>
	<script>
		function myorderlist() {
			$.ajax({
				url:"myinfo_orderlist",
				method:"get",
				success:function(data) {
					$("#orderlist").html(data);
					$("#orderlist").show();
					$("#infomain").hide();
					/* $("#moneyCoupon").hide(); */
					$("#directqBox").hide();
					$("#adminorderlist").hide();
					$("#changeId").hide();
					$("#rewrite").hide();
					$("#regist").hide();
				}
			});
		}
		
		function adminorderlist() {
			$.ajax({
				url:"admin_orderlist",
				method:"get",
				success:function(data) {
					$("#adminorderlist").html(data);
					$("#adminorderlist").show();
					$("#infomain").hide();
					/* $("#moneyCoupon").hide(); */
					$("#directqBox").hide();
					$("#changeId").hide();
					$("#rewrite").hide();
					$("#regist").hide();
					$("#orderlist").show();
					
				}
			});
		}

		function regist() {
			$.ajax({
				url:"goodsregist",
				method:"get",
				success:function(data) {
					$("#regist").html(data);
					$("#regist").show();
					$("#adminorderlist").hide();
					$("#infomain").hide();
					/* $("#moneyCoupon").hide(); */
					$("#directqBox").hide();
					$("#rewrite").hide();
					$("#changeId").hide();
					$("#orderlist").hide();
					
				}
			});
		}

		function rewrite() {
			$.ajax({
				url:"goodsrewrite",
				method:"get",
				success:function(data) {
					$("#rewrite").html(data);
					$("#rewrite").show();
					$("#regist").hide();
					$("#adminorderlist").hide();
					$("#infomain").hide();
					/* $("#moneyCoupon").hide(); */
					$("#directqBox").hide();
					$("#changeId").hide();
					$("#orderlist").hide();
				}
			});
		}
		
		function changeId() {
			$.ajax({
				url:"changeId",
				method:"get",
				success:function(data) {
					$("#changeId").html(data);
					$("#changeId").show();
					$("#regist").hide();
					$("#adminorderlist").hide();
					$("#infomain").hide();
					/* $("#moneyCoupon").hide(); */
					$("#directqBox").hide();
					$("#rewrite").hide();
					$("#orderlist").hide();
				}
			});
		}
	</script>

</head>
<body>


	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
		
		<div id = "wrapper_contents">
		<div id="content">
			<div id="article">
				<div class = "title2">
					<h1 style="font-size:40px;"><b>나의 정보</b></h1>
					<div id="search_line">
					
					</div>
				</div>
				
				
				
				<div class = "infototal">
					<nav id ="infomenu">
						<ul>
							<h3><b>주문 정보</b></h3>
							<c:if test='${ADMIN!="admin"}'>
							<li><a href="javascript:myorderlist()">주문/배송 조회</a></li>
							</c:if>
							<c:if test='${ADMIN=="admin"}'>
							<li><a href="javascript:adminorderlist()">주문/배송 관리</a></li>
							</c:if>
						</ul>
						<!-- <ul>
							<h3><b>혜택</b></h3>
							<li><a href="javascript:mcBox()">등급 & 적립금</a></li>
						</ul> -->
						<ul>
							<h3><b>나의 정보</b></h3>
							<li><a href="javascript:changeId()">개인정보 변경</a></li>
							<li><a href="<%=application.getContextPath()%>/deleteId">회원탈퇴</a></li>
						</ul>
						
						<c:if test='${ADMIN!="admin"}'>
						<ul>
							<h3><b>고객센터</b></h3>
							<li><a href="javascript:dqBox()">1대1 문의내역</a></li>
						</ul>
						</c:if>
						
						<ul>
							
						<%-- 	<li><input type="checkbox" onclick="openli(this)" name="seller" value="seller" id="sell" /><label for="sell"><b>판매자등록</b></label></li>
					
								<div id ="tempdiv" style="display:none">
									<li><a href="<%=application.getContextPath()%>/seller/goodsRegist" name="sel01">상품등록</a></li>
									<li><a href="<%=application.getContextPath()%>/seller/goodsRevise" name="sel02">상품수정</a></li>
								</div> --%>
								
								<c:if test='${ADMIN=="admin"}'>
									<h3><b>판매자등록</b></h3>
									<li><a href="javascript:regist()" name="sel01">상품등록</a></li>
									<li><a href="javascript:rewrite()" name="sel02">상품수정</a></li>
									
									<h3><b>[관리자]고객센터</b></h3>
									<li><a href="<%=application.getContextPath()%>/customer_service/directqlist" href="javascript:dqBox()" name="cs01">1대1문의 관리</a></li>
								</c:if>									
						</ul>
					</nav>
					
		<!--=========================================================================== -->
					
					<div id="regist">
					</div>
					
					<div id="rewrite">
					</div>

					<div id="directqBox">			
					</div>
					
					
					<div id="moneyCoupon">
					</div>
					
					<div id="orderlist">
					</div>
					
					<div id="adminorderlist">
					</div>
					
					<div id="changeId">
					</div>
					
					<div id="infomain">
					
							
						<div id = "moneycoupon">
							
								
								<c:if test="${mem.mgrade=='Gray'}">
									<h4 style="margin-top : 100px; color: #868e96; ">회원님의 등급은 <b>Gray</b> 입니다.</h4>
								</c:if>
								<c:if test="${mem.mgrade=='Sky'}">
									<h4 style="margin-top : 100px; color: #4dabf7;">회원님의 등급은 <b>Sky</b> 입니다.</h4>
								</c:if>
								<c:if test="${mem.mgrade=='Blue'}">
									<h4 style="margin-top : 100px; color: #1c7ed6">회원님의 등급은 <b>Blue</b> 입니다.</h4>
								</c:if>
								<c:if test="${mem.mgrade=='The Blue'}">
									<h4 style="margin-top : 100px; color: #1864ab">회원님의 등급은 <b>The Blue</b> 입니다.</h4>
								</c:if>
								<c:if test="${mem.mgrade=='Blue Blanco'}">
									<h4 style="margin-top : 100px; color: #364fc7">회원님의 등급은 <b>Blue Blanca</b> 입니다.</h4>
								</c:if>
								<hr style="height:5px; background-color:black">
								<table id = "money">
								<tr style="height:60px">
									<td class ="pitext2"><b>적립금</b></td>
									<td class ="pitext2"><b>구매횟수</b></td>
									<td class ="pitext2"><b>소비액</b></td>
								</tr>
								<tr style="height:60px">
									<td><div id = "num4343" class = "smmoney">${pur.msavemoney}</div></td>
									<td><div id = "num4343" class = "ssum">${pur.mpurchasecount}</div></td>
									<td><div id = "num4343" class = "slost">${pur.mpurchasesum}</div></td>
								</tr>
							</table>
				
						</div>
								
					</div>
				</div>
			</div>
		</div>
		</div>
	
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>