

				
var pprice;
var amount;
var sum;
var deli;

 
$(document).ready(function(){
	var sum_all = 0;
	
	var sums = document.getElementsByClassName("sum");
	
 	for(var i=0; i < sums.length; i++) {
		sum_all += parseInt(sums[i].value);
	}
	
	if(sum_all < 100000) {
		deli = 3000;
	} else {
		deli = 0;
	}
	
	var final_price = sum_all + deli;
	
	$("#sum_all").html(sum_all + "원");
	$("#deli").html(deli + "원");
	$("#final_price").html(final_price + "원");
	$("#oprice").val(final_price);
});
				