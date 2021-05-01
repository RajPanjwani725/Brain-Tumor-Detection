function validateTableDetais() {

	if ($('#datasetName').val().trim() === '') {
		$('#datasetName').focus()
		showErrorToast('Please enter Dataset Name')		
		return false;
		
	}
	

	 else if ($('#datasetDescription').val().trim() === '') {
			$('#datasetDescription').focus()
			showErrorToast('Please enter Dataset Desccription')		
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