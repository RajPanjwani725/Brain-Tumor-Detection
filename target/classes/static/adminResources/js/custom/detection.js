function getDetection(id) {

	var datasetId = id;
	// alert(datasetId);

	console.log('datasetId: ', datasetId);

	var htp = new XMLHttpRequest();

	htp.onreadystatechange = function() {

		if (htp.readyState == 4) {

			var jsn = JSON.parse(htp.responseText);
			// alert(jsn);
			console.log(jsn);

			detectTumour(jsn);
		}
	}
	htp.open("get", "getDatasetById?id=" + datasetId, true);
	htp.send();
}

function detectTumour(jsn) {
	var id = jsn[0].id;
	var loginId = jsn[0].loginVO.loginId;
	var datasetFileName = jsn[0].datasetFileName;
	var datasetFilePath = jsn[0].datasetFilePath;
	console.log(id);

	let htp = new XMLHttpRequest();

	htp.onreadystatechange = function() {

		if (htp.readyState == 4) {

			//alert("in if");
			var jsn = JSON.parse(htp.responseText);
			//alert(htp.responseText);
			console.log(jsn);
			location.reload();

		}
	}
	htp.open("get", "http://127.0.0.1:1235/load_inference?id=" + id
			+ "&loginId=" + loginId + "&datasetFileName=" + datasetFileName
			+ "&datasetFilePath=" + datasetFilePath, true);
	
	htp.send();
	
}