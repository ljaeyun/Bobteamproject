<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    
<div class = "user_base">
	<div class = "buy_log">
		<h3 class="buy_title">적립금</h3>
		<div class="buy_log">
			<a class="btn btn-success btn-sm" href="javascript:getEmployee(101)">적립금 버튼</a>
			<script>
				function getPurchase(mid) {
					$.ajax({
						url:"purchase",
						data:{member_id : mid},
						success: function(data) {
							$('#mid').html(data.member_id);
							$('#mpurchasecount').html(data.)
						}
					});
				}
			</script>
		</div>
	</div>
		
	<div class = "coupon_log">
		<h3 class="coupon_title">쿠폰</h3>
		<div class="coupon_log">
		
		</div>
	</div>
	
</div>
