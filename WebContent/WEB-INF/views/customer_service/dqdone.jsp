<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


			<div>
			
					<div><h5>1대1문의 내역</h5></div>
					<table id="notice_table" class="table table-bordered">
					  <thead>
					    <tr id="notice_title">
					      <th class="not_list_num">번호</th>
					      <th class="not_list_title">제목</th>
					      <th class="not_list_date">답변</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<c:forEach var="directq" items="${list}">
						  	<tr>
						      <td class="not_list_num">${directq.qno}</td>
						      <td class="not_list_title"><a class="text-decoration-none" 
						      	href="directqread?qno=${directq.qno}">${directq.qtitle}</a></td>
						      <td class="not_list_date">${directq.qanswer}</td>
					  		</tr>
					  	</c:forEach>
					  </tbody>
					 </table>
				</div> 

