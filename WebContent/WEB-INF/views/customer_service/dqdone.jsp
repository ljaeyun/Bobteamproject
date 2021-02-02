<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_dqlist.css">
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/account/myinfo.css">
		
				<div id="dqlist_wrqp">
					<div id="dqlist_desc">1:1 문의 내역</div>
					<hr style="height:5px; background-color:black">
					<table id="mypage_dq_table" class="table table-bordered">
					  <thead>
					    <tr id="mypage_dq_titlebox">
					      <th id="mypage_dqlist_headno" class="mypage_dqlist_num">번호</th>
					      <th id="mypage_dqlist_headtitle" class="mypage_dqlist_title">제목</th>
					      <th id="mypage_dqlist_headanswer" class="mypage_dqlist_answer">답변</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<c:forEach var="directq" items="${list}">
						  	<tr>
						      <td class="mypage_dqlist_num">${directq.qno}</td>
						      <td class="mypage_dqlist_title"><a class="text-decoration-none" 
						      	href="directqread?qno=${directq.qno}">${directq.qtitle}</a></td>
						      <td class="mypage_dqlist_answer">${directq.qanswer}</td>
					  		</tr>
					  	</c:forEach>
					  </tbody>
					 </table>
				</div> 

