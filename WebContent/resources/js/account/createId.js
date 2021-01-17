
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