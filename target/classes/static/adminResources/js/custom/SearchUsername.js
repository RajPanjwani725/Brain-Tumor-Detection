function getCity(){
	
	var uname = document.getElementById("username");
	//var cityId = document.getElementById("cityId");
//console.log('stateId: ',stateId.value);

	var htp = new XMLHttpRequest();

	htp.onreadystatechange = function() {

		if (htp.readyState == 4) {

			var jsn = JSON.parse(htp.responseText);

			//console.log(jsn);
			

			for (var i = 0; i < jsn.length; i++) {

				var option = document.createElement("option");
				
				option.value = jsn[i].id;
				option.text = jsn[i].cityName;
				
				cityId.add(option);
			}

		}
	}
	htp.open("get","getSubcategoryByStateId?id=" + stateId.value, true);
	htp.send();
}
