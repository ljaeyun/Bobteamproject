<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function fun1(){
	$.ajax({
		url:"tabmenu1",
		method:"get",
		success:function(data){
			$("#people1").html(data);
			$("#people1").show(data);
			$("#people2").hide(data);
			$("#people3").hide(data);
			$("#people4").hide(data);
			$("#people5").hide(data);
			$("#btn1").css({"background-color": "#364fc7", "color": "white"});
			$("#btn2").css({"background-color": "", "color": ""});
			$("#btn3").css({"background-color": "", "color": ""});
			$("#btn4").css({"background-color": "", "color": ""});
			$("#btn5").css({"background-color": "", "color": ""});
		}
	});
};

function fun2(){
	$.ajax({
		url:"tabmenu2",
		method:"get",
		success:function(data){
			$("#people2").html(data);
			$("#people1").hide(data);
			$("#people2").show(data);
			$("#people3").hide(data);
			$("#people4").hide(data);
			$("#people5").hide(data);
			$("#btn2").css({"background-color": "#1864ab", "color": "white"});
			$("#btn1").css({"background-color": "", "color": ""});
			$("#btn3").css({"background-color": "", "color": ""});
			$("#btn4").css({"background-color": "", "color": ""});
			$("#btn5").css({"background-color": "", "color": ""});
		}
	});
};

function fun3(){
	$.ajax({
		url:"tabmenu3",
		method:"get",
		success:function(data){
			$("#people3").html(data);
			$("#people1").hide(data);
			$("#people2").hide(data);
			$("#people3").show(data);
			$("#people4").hide(data);
			$("#people5").hide(data);
			$("#btn3").css({"background-color": "#1c7ed6", "color": "white"});
			$("#btn1").css({"background-color": "", "color": ""});
			$("#btn2").css({"background-color": "", "color": ""});
			$("#btn4").css({"background-color": "", "color": ""});
			$("#btn5").css({"background-color": "", "color": ""});
		}
	});
};

function fun4(){
	$.ajax({
		url:"tabmenu4",
		method:"get",
		success:function(data){
			$("#people4").html(data);
			$("#people1").hide(data);
			$("#people2").hide(data);
			$("#people3").hide(data);
			$("#people4").show(data);
			$("#people5").hide(data);
			$("#btn4").css({"background-color": "#4dabf7", "color": "white"});
			$("#btn1").css({"background-color": "", "color": ""});
			$("#btn2").css({"background-color": "", "color": ""});
			$("#btn3").css({"background-color": "", "color": ""});
			$("#btn5").css({"background-color": "", "color": ""});
		}
	});
};

function fun5(){
	$.ajax({
		url:"tabmenu5",
		method:"get",
		success:function(data){
			$("#people5").html(data);
			$("#people1").hide(data);
			$("#people2").hide(data);
			$("#people3").hide(data);
			$("#people4").hide(data);
			$("#people5").show(data);
			$("#btn5").css({"background-color": "#868e96", "color": "white"});
			$("#btn1").css({"background-color": "", "color": ""});
			$("#btn2").css({"background-color": "", "color": ""});
			$("#btn3").css({"background-color": "", "color": ""});
			$("#btn4").css({"background-color": "", "color": ""});
		}
	});
};			
</script>

<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/event/cs_event_tabmenu.css">
</head>
<body>
	
		<jsp:include page="/WEB-INF/views/include/header.jsp"/>
	
		<div id="wrapper_contents">
			<section id = "members">
			<div id="message">
			<div id="search_inform">
				<h1 id="search_big">밥향기 리버스 혜택</h1>
				<h4 id="search_det">고객님께 받은 사랑을 혜택으로 돌려드려요.<br/> 매월 실적에 따라 달라지는 실용적이고 다채로운 혜택을 확인해보세요.</h4>
			</div>	
			<div id="search_line"></div>
			</div>
			<div class = btn_A>
				 <a type="button" id= btn1 class="tablink" 	href="javascript:fun1()">블루비양카</a>
				 <a type="button" id= btn2 class="tablink"	href="javascript:fun2()"> 더 블루  </a>
				 <a type="button" id= btn3 class="tablink"	href="javascript:fun3()" > 블루 </a>
				 <a type="button" id= btn4 class="tablink"	href="javascript:fun4()"> 스카이 </a>
				 <a type="button" id= btn5 class="tablink"	href="javascript:fun5()"> 그레이 </a>

			</div>
			
			<div>
			<div id= "people1">
			
				  <table style="table-layout: fixed" id= "blue1">
				
				<tr>
					<th><h1>블루비양카</h1></th>
					<th>적립률 <b>10</b>% </th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th>매월 할인 쿠폰<b>7</b>장 </th>
					<th>총 혜택 <b>240</b>만원 이상 </th>
				</tr>
				<tr>
					<th><h5>전월 실적 150만원 이상</h5></th>
					<th>더블 후기 적립금</th>
					<th><h5>등급 1년간 유지시</h5></th>
				</tr>
				<tr>
					<th></th>
					<th>이벤트 최우선 적용</th>
					<th></th>
				</tr>
				</table> 
			</div> 
			
			
			<div id= "people2">
				<!-- <table style="table-layout: fixed" id= "blue2">
				
				<tr>
					<th ><h1>더 블루</h1></th>
					<th>적립률 <b>7</b>% </th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th>매월 할인 쿠폰<b>5</b>장 </th>
					<th>총 혜택 <b>200</b>만원 이상 </th>
				</tr>
				<tr>
					<th><h5>전월 실적 120만원 이상</h5></th>
					<th>더블 후기 적립금</th>
					<th><h5>등급 1년간 유지시</h5></th>
				</tr>
				<tr>
					<th></th>
					<th>이벤트 우선 적용</th>
					<th></th>
				</tr>
				</table> -->
			</div>
			<div id= "people3">
				<!-- <table style="table-layout: fixed" id= "blue3">
				
				<tr>
					<th><h1>블루 &nbsp;</h1></th>
					<th>적립률 <b>5</b>% </th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th>매월 할인 쿠폰<b>3</b>장 </th>
					<th>총 혜택 <b>170</b>만원 이상 </th>
				</tr>
				<tr>
					<th><h5>전월 실적 90만원 이상</h5></th>
					<th>더블 후기 적립금</th>
					<th><h5>등급 1년간 유지시</h5></th>
				</tr>
				<tr>
					<th></th>
					<th>이벤트 우선 적용</th>
					<th></th>
				</tr>
				</table> -->
			</div>
			<div id= "people4">
			<!-- <table style="table-layout: fixed" id= "blue4">
		
				<tr>
					<th><h1>스카이</h1></th>
					<th>적립률 <b>3</b>% </th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th>매월 할인 쿠폰<b>2</b>장 </th>
					<th>총 혜택 <b>100</b>만원 이상 </th>
				</tr>
				<tr>
					<th><h5>전월 실적 60만원 이상</h5></th>
					<th> 후기 적립금</th>
					<th><h5>등급 1년간 유지시</h5></th>
				</tr>
				<tr>
					<th></th>
					<th>이벤트 우선 적용</th>
					<th></th>
				</tr>
				</table> -->
			</div>
			
			<div id= "people5">
			<!-- <hr/>
				<table style="table-layout: fixed" id= "blue5">
				
				<tr>
					<th ><h1>그레이&nbsp; &nbsp; &nbsp;</h1></th>
					<th>적립률 <b>2</b>% </th>
					<th></th>
				</tr>
				<tr>
					<th></th>
					<th>매월 할인 쿠폰&nbsp;1&nbsp;장 </th>
					<th>총 혜택 40만원 이상 </th>
				</tr>
				<tr>
					<th><h5>밥향기 가입시 적용</h5></th>
					<th>후기 적립금</th>
					<th><h5>승급 이전까지 </h5></th>
				</tr>
				<tr>
					<th></th>
					<th>밥향기 이벤트 알람발송</th>
					<th></th>
				</tr>
				</table> -->
			</div>
			</div>
			
			<hr/>
			
			<div id ="extra1">
				<ul>
					<li>총 혜택금액은 12개월동안 동일 등급을 유지하는 경우 받게 되는 적립, 쿠폰할인, 선물금액의 총합입니다.
					<li>등급별 할인 쿠폰혜택은 변경 될 수 있습니다.
				</ul>
			</div>
			</section>
			</div>
	
			

		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	
</body>
</html>