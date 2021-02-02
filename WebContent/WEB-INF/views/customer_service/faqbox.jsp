<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<c:forEach var="faq" items="${list}">
		<div class="question_list">
			<div class="faq_Q_Icon"><img src="<%=application.getContextPath()%>/resources/img/letterQ.png" width="35px" height="35px"/></div>
			<div id="question_01" class="faq_q" >
				<ul>
				 	<li class="question_text" onclick="faqanswer()">${faq.ftitle}</li>
				 	<li class="question_type">${faq.fname}</li>
				</ul>
			</div>
		</div>
		
		<div id="faq_answerbox" class="answer_list">
			<ul>
				<li class="answer_text">${faq.fanswer}</li>
			</ul>
		</div>
		
		<script>
			function faqanswer(){
				$.ajax({
					url:"faqanswerbox",
					method:"get",
					data: {fcatid:fcatid},
					success:function(data){
						$("#faq_answerbox").html(data);
					}
				});
			};
		</script>
		
	</c:forEach>
		