function validateTableDetais() {
	var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	
	if ($('#name').val().trim() === '') {
		$('#name').focus()
		showErrorToast('Please enter Name')
		return false;

	}

	else if ($('#phoneNumber').val().trim() === '') {
		$('#phoneNumber').focus()
		showErrorToast('Please enter Phone Number')
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
	

	else if ($('#phoneNumber').val().trim().length != 10) {
		$('#phoneNumber').focus()
		showErrorToast('Invalid length of Phone Number++')
		return false;
	}
	

	
	else if ($('#username').val().trim() === '') {
		$('#username').focus()
		showErrorToast('Please Enter your Email Id')
		return false;
	}
	
	else if(!regex.test($('#username').val().trim())){    
		$('#username').focus()
		
		showErrorToast('Invalid Email Id Format')
		return false;
	}


	


	else {
		return true;
	}
}