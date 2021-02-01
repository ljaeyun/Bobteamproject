<%@ page contentType="text/html; charset=UTF-8"%>



			<div class="alert alert-primary" role="alert">
			   1대1 문의 작성
			</div>
			<form enctype="multipart/form-data" name="directqwriteform" action="directqwrite" method="post">
			  
			  <input type="hidden" name="mid" value="${sessionMid}"/>
			  <div class="form-group">
				    <label for="qtitle">제목</label>
				    <input type="text" class="form-control" id="qtitle" name="qtitle">
				    <small class="form-text text-muted">제목을 작성해주세요.</small>
			  </div>
			  <div class="form-group">
				    <label for="qcontent">내용</label> <br/>
				    <textarea class="form-control" id="qcontent" name="qcontent" rows="4" cols="50"></textarea>
			 		<small class="form-text text-muted">개인정보를 작성하시면 삭제될 수 있습니다.</small>
			  </div>
			  
			  <button class="btn btn-primary">제출</button>
			  <a class="btn btn-primary" href="customer_service_faq">취소</a>
			</form>
			