function validateTableDetais() {

	if ($('#cityName').val().trim() === '') {
		$('#cityName').focus()
		showErrorToast('Please enter City Name')		
		return false;
		
	}
	

	 else if ($('#cityDescription').val().trim() === '') {
			$('#cityDescription').focus()
			showErrorToast('Please enter City Description')		
			return false;
	 }
	
 
	else {
		return true;
	}
}