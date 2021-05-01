function validateTableDetais() {

	if ($('#complainReply').val().trim() === '') {
		$('#complainReply').focus()
		showErrorToast('Please Reply to Complain')		
		return false;
		
	}
		
 
	else {
		return true;
	}
}