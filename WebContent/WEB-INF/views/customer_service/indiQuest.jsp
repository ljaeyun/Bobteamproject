<%@ page contentType="text/html; charset=UTF-8"%>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/customer_service/cs_customer_service_faq.css">


			<div id="indiv_question_box">
				<div id="indiq_title">1:1 문의</div>
				<div id="indiq_cat_box">
					<div id="indiq_cat">문의 유형</div>
					<div id="indiq_cat_input">
						<form id="indiq_cat_form">
							<input type="text" name="indiq" placeholder="문의 유형을 작성해주세요."></input>
						</form>
					</div>
				</div>
				<div id="indiq_content_box">
					<div id="indiq_content_title">문의 내용</div>
					<div id="indiq_content">
						<form id="indiq_content_form">
							<textarea rows="5" cols="100"></textarea>
						</form>
					</div>
				</div>
				<div id="indiq_waring"> 고객님의 개인정보(이름,핸드폰 번호, 계좌번호 등) 입력 시 관리자에 의해 임의 삭제될 수 있습니다.
				</div>
				<div id="indiq_submitbox">
					<button id="indiq_submit" class="indiq_btn">확인</button>
					<button id="indiq_cancel" class="indiq_btn">취소</button>
				</div>
			</div>