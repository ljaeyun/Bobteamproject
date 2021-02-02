<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="width:860px; align-content: center;">
	<div style="height:24px;">
		<div style="display:inline-block; width:100px;"></div>
		<div style="display:inline-block; width:300px;">상품명</div> 
		<div style="display:inline-block; width:100px;">가격</div> 
		<div style="display:inline-block; width:100px;">갯수</div>
		<div style="display:inline-block; width:100px;">총 가격</div>
	</div>
	
	<div style="background-color:#f8f9fa">
		<c:forEach var="orderitems" items="${orderitems}">
			<hr/>
			<div style="display:block; height:75px; vertical-align: middle;">
				<div style="display:inline-block; width:100px;"><img src="pphoto3?pno=${orderitems.pno}" width="100px;"/></div>
				<div style="display:inline-block; width:300px;">${orderitems.pname}</div>
				<div style="display:inline-block; width:100px;">${orderitems.pprice}원</div>
				<div style="display:inline-block; width:100px;">${orderitems.opqn}개</div>
				<div style="display:inline-block; width:100px;">${orderitems.pprice*orderitems.opqn}원</div>
			</div>
		</c:forEach>
	</div>
</div>