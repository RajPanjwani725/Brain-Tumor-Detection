function validateTableDetais() {

	if ($('#feedbackSubject').val().trim() === '') {
		$('#feedbackSubject').focus()
		showErrorToast('Please Enter Feedback Subject')		
		return false;
		
	}
 
	else {
		return true;
	}
}