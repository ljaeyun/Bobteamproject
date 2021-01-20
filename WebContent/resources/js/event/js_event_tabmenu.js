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