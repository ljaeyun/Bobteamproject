

				
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


function recalc(){
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
	
	$("#sum_all").html(sum_all + "원");
	$("#deli").html(deli + "원");
	$("#final_price").html(sum_all + deli + "원");
	$("#oprice").val(sum_all + deli);
};


function plus(pno) {
	pprice = document["form_" + pno]["pprice_" + pno];
	amount = document["form_" + pno]["amount_" + pno];
	sum = document["form_" + pno]["sum_" + pno];
	amount.value++;
	sum.value = amount.value * pprice.value;
	$.ajax({
		url: "updatecart",
		method: "post",
		data:{pno:pno, cpqn:amount.value},
		success: recalc()
	});

}



function minus(pno) {
	pprice = document["form_" + pno]["pprice_" + pno];
	amount = document["form_" + pno]["amount_" + pno];
	sum = document["form_" + pno]["sum_" + pno];
	if (amount.value > 1) {
		amount.value--;
	}
	sum.value = amount.value * pprice.value;
	$.ajax({
		url: "updatecart",
		method: "post",
		data:{pno:pno, cpqn:amount.value},
		success: recalc()
	});
}
						
					