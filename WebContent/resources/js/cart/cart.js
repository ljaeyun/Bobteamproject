checkAll = () => {
				   if(document.getElementById("checkall").checked==true){ 
				         for(var i=0;i<2;i++) document.getElementsByName("checkBox")[i].checked=true; 
				      }
				      if(document.getElementById("checkall").checked==false){
				         for(var i=0;i<2;i++) document.getElementsByName("checkBox")[i].checked=false;  
				      }
				}
			
			
			var sell_price;
			var amount;
			var delivery = 3000;

			init = () => {
				sell_price = document.form.sell_price;
				amount = document.form.amount;
				document.form.sum.value = parseInt(sell_price.value);
				change();
				if(document.form.sum.value >= 50000) {
					deli = 0;
				} else if(document.form.sum.value < 50000) {
					deli = 3000;
				}
				document.getElementById("deli").innerHTML = deli + "원";
				document.getElementById("fianl_price").innerHTML = parseInt(sum.value) + deli + "원";
			}
			
			plus = () => {
				sell_price = document.form.sell_price;
				amount = document.form.amount;
				sum = document.form.sum;
				amount.value++;
				sum.value = amount.value * parseInt(sell_price.value);
				document.getElementById("sum_all").innerHTML = sum.value + "원";
				if(document.form.sum.value >= 50000) {
					deli = 0;
				} else if(document.form.sum.value < 50000) {
					deli = 3000;
				}
				document.getElementById("deli").innerHTML = deli + "원";
				document.getElementById("fianl_price").innerHTML = parseInt(sum.value) + deli + "원";
			}

			minus = () => {
				sell_price = document.form.sell_price;
				amount = document.form.amount;
				sum = document.form.sum;
					if (amount.value > 1) {
						amount.value--;
						sum.value = amount.value * parseInt(sell_price.value);
						document.getElementById("sum_all").innerHTML = sum.value + "원";
						if(document.form.sum.value >= 50000) {
							deli = 0;
						} else if(document.form.sum.value < 50000) {
							deli = 3000;
						}
						document.getElementById("deli").innerHTML = deli + "원";
						document.getElementById("fianl_price").innerHTML = parseInt(sum.value) + deli + "원";
					}
			}

			change = () => {
				sell_price = document.form.sell_price;
				amount = document.form.amount;
				sum = document.form.sum;
					if (amount.value < 0) {
						amount.value = 0;
					}
				sum.value = amount.value * parseInt(sell_price.value);
				document.getElementById("sum_all").innerHTML = sum.value + "원";
				if(document.form.sum.value >= 50000) {
					deli = 0;
				} else if(document.form.sum.value < 50000) {
					deli = 3000;
				}
				document.getElementById("deli").innerHTML = deli + "원";
				document.getElementById("fianl_price").innerHTML = parseInt(sum.value) + deli + "원";
			}