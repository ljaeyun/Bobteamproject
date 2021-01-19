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
						}
					});
				};
				
function fun2(){
					$.ajax({
						url:"tabmenu2",
						method:"get",
						success:function(data){
							$("#people2").html(data);
							
						}
					});
				};
				
function fun3(){
					$.ajax({
						url:"tabmenu3",
						method:"get",
						success:function(data){
							$("#people3").html(data);
						}
					});
				};
				
function fun4(){
					$.ajax({
						url:"tabmenu4",
						method:"get",
						success:function(data){
							$("#people4").html(data);
						}
					});
				};
				
function fun5(){
					$.ajax({
						url:"tabmenu5",
						method:"get",
						success:function(data){
							$("#people5").html(data);
						}
					});
				};					