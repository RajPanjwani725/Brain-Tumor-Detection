function validateTableDetais() {

	if ($('#complainSubject').val().trim() === '') {
		$('#complainSubject').focus()
		showErrorToast('Please Enter complain Subject')		
		return false;
		
	}
	

	 else if ($('#complainDescription').val().trim() === '') {
			$('#complainDescription').focus()
			showErrorToast('Please Enter Complain Description')		
			return false;
	 }
	
 
	else {
		return true;
	}
}