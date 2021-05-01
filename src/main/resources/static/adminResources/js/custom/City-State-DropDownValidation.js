function getCity(){
	
	var stateId = document.getElementById("stateId");
	var cityId = document.getElementById("cityId");
//console.log('stateId: ',stateId.value);

	var htp = new XMLHttpRequest();

	htp.onreadystatechange = function() {

		if (htp.readyState == 4) {

			var jsn = JSON.parse(htp.responseText);

			//console.log(jsn);
			cityId.innerHTML='';

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

function getCitys(){
	
	var stateId = document.getElementById("stateId");
	var cityId = document.getElementById("cityId");
//console.log('stateId: ',stateId.value);

	var htp = new XMLHttpRequest();

	htp.onreadystatechange = function() {

		if (htp.readyState == 4) {

			var jsn = JSON.parse(htp.responseText);

			//console.log(jsn);
			cityId.innerHTML='';
			

			for (var i = 0; i < jsn.length; i++) {

				var option = document.createElement("option");
				
				option.value = jsn[i].id;
				option.text = jsn[i].cityName;
				
				cityId.add(option);
			}

		}
	}
	htp.open("get","getSubcategoryByStateIds?id=" + stateId.value, true);
	htp.send();
}