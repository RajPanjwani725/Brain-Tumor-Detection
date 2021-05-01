function validateTableDetais() {
	var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

	if ($('#username').val().trim() === '') {
		$('#username').focus()
		showErrorToast('Please Enter your Email Id')
		return false;
	}

	else if (!regex.test($('#username').val().trim())) {
		$('#username').focus()

		showErrorToast('Invalid Email Id Format')
		return false;
	}

	else {
		return true;
	}
}