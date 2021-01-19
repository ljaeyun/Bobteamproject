
	function selectAll(selectAll) {
				const checkboxes = document.querySelectorAll('input[type="checkbox"]');
				
				checkboxes.forEach((checkbox) => {
					checkbox.checked = selectAll.checked;
				})
			}
			
	function checkSelectAll() {
		const checkboxes = document.querySelectorAll('input[name="agreebox"]');
		
		const checked = document.querySelectorAll('input[name="agreebox"]:checked');
		
		const selectAll = document.querySelector('input[name="selectall"]');
		
		if(checkboxes.length === checked.length) {
			selectAll.checked = true;
			
		} else {
			selectAll.checked = false;
		}
	}
			
	function mustSelect() {
		const mustcheck = document.querySelectorAll('input[class="mustclick"]:checked');
		
		const box = document.querySelector('input[id="checkbtn"]');
		
		if(mustcheck.length == 3)
		{
			box.prop("disabled", false);
		} else {
			box.prop("disabled", true);
		}
	}