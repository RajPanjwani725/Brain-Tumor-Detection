function validateTableDetais() {

	if ($('#password').val().trim() === '') {
		$('#password').focus()
		showErrorToast('Please enter Your Password')
		return false;
	}

	else if ($('#confirmPassword').val().trim() === '') {
		$('#confirmPassword').focus()
		showErrorToast('Please Confirm Your Password ')
		return false;
	}

	else if ($('#password').val().trim() != $('#confirmPassword').val().trim()) {
		$('#password').focus()
		showErrorToast('Password and  Confirm Password doesnot match')
		return false;
	}
	else if ($('#password').val().trim() == $('#confirmPassword').val().trim()) {
		$('#password').focus()
		showSuccessToast('Your Password is Changed')
		return true;
	}


	else {
		return true;
	}
}