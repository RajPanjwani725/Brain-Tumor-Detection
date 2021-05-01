function validateTableDetais() {

	if ($('#stateName').val().trim() === '') {
		$('#stateName').focus()
		showErrorToast('Please enter State Name')		
		return false;
		
	}
	

	 else if ($('#stateDescription').val().trim() === '') {
			$('#stateDescription').focus()
			showErrorToast('Please enter State Description')		
			return false;
	 }
	
 
	else {
		return true;
	}
}