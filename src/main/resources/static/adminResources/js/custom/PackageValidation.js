function validateTableDetais() {

	if ($('#packageName').val().trim() === '') {
		$('#packageName').focus()
		showErrorToast('Please enter Package Name')		
		return false;
		
	}
	

	 else if ($('#packagePrice').val().trim() === '') {
			$('#packagePrice').focus()
			showErrorToast('Please enter Package Price')		
			return false;
	 }
	

		else if (!$.isNumeric($('#packagePrice').val().trim())) {
			$('#packagePrice').focus()
	        showErrorToast('Package Price Should be Integer')
	        return false;
	    } 


	 else if ($('#packageDuration').val().trim() === '') {
			$('#packageDuration').focus()
			showErrorToast('Please enter Package Duration')		
			return false;
	 }

	 else if ($('#packageDescription').val().trim() === '') {
			$('#packageDescription').focus()
			showErrorToast('Please enter Package Description')		
			return false;
	 }
	
 
	else {
		return true;
	}
}