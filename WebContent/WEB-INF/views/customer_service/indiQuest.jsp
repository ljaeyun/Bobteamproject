<%@ page contentType="text/html; charset=UTF-8"%>



			<div class="alert alert-secondary" role="alert">
			   1대1 문의 작성
			</div>
			<form enctype="multipart/form-data"  name="directqwriteform" action="directqwrite" method="post">
			  
			  <input type="hidden" name="mid" value="${sessionMid}"/>
			  <div class="form-group">
				    <label for="qtitle">제목</label>
				    <input type="text" class="form-control" id="qtitle" name="qtitle">
				    <small class="form-text text-muted">제목을 작성해주세요.</small>
			  </div>
			  <div class="form-group">
				    <label for="qcontent">내용</label> <br/>
				    <textarea class="form-control" id="qcontent" name="qcontent" rows="4" cols="50"></textarea>
			 		<small class="form-text text-muted">고객님의 개인정보(이름,핸드폰 번호, 계좌번호 등) 입력 시 관리자에 의해 임의 삭제될 수 있습니다.</small>
			  </div>
			  
			  <button class="btn btn-secondary">제출</button>
			  <a id="directq_cancel" class="btn btn-secondary" href="customer_service_faq">취소</a>
			</form>
			