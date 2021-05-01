function validateTableDetais() {

	if ($('#name').val().trim() === '') {
		$('#name').focus()
		showErrorToast('Please Enter Your Name')
		return false;

	}

	
	else if ($('#phoneNumber').val().trim() === '') {
		$('#phoneNumber').focus()
		showErrorToast('Please Enter your Phone Number')
		return false;
	}

	else if ($('#phoneNumber').val().trim().length != 10) {
		$('#phoneNumber').focus()
		showErrorToast('Invalid length of Phone Number')
		return false;
	}

	else if (!$.isNumeric($('#phoneNumber').val())) {
		$('#phoneNumber').focus()
        showErrorToast('Phone Number Should be Integer')
        return false;
		
    } 
	
	else if ($('#address').val().trim() === '') {
		$('#address').focus()
		showErrorToast('Please Enter your Adderess')
		return false;
	}

	else if ($('#describe').val().trim() === '') {
		$('#describe').focus()
		showErrorToast('Please Describe You')
		return false;
	}

	else {
		return true;
	}
}