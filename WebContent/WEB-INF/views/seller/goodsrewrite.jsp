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
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/account/myinfo.css">
<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_customer_service_faq.css">
</head>	
<script>

	function modify(pno){
		var pno = $("#productpno").val();
 		$.ajax({
 			url:"goodsmodify",
 			method:"get",
 			data:{pno:pno},
 			success:function(data){
 				$("#modify").html(data);
 				$("#modify").show();
 				$("#contents").hide();
 			}
 		});
 	}
</script>
<body>	
		<div id="contents">
				<br/>
		<h4><b>상품 등록 내역</b></h4>
			<hr style="height:5px; background-color:black">
			
				<br/>
				<table class="table table-hover" style="width:900px; text-align:center;">
					<thead>
						<tr>
							<th>상품 번호</th>
							<th>상품 이름</th>
							<th>상품 가격</th>
							<th>상품 용량</th>
							<th>조리시간</th>
							<th>수정하기</th>
							<th>삭제하기</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${list}" >
							<input type="hidden" id="productpno" value="${product.pno}"/>
						<tr>
							<td>${product.pno}</td>
							<td>${product.pname}</td>
							<td>${product.pprice}원</td>
							<td>${product.pamount}</td>
							<td>${product.ptime}분</td>
							<td><a href="javascript:modify(${product.pno})"><img width="30px" height="30px" src="<%=application.getContextPath()%>/resources/img/modify.png"/></a></td>
						
							<td><a href="goodsdelete?pno=${product.pno}" ><img width="30px" height="30px" src="<%=application.getContextPath()%>/resources/img/trashbin.png"/></a></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>
		<div id="modify">
		</div>
</body>

</html>