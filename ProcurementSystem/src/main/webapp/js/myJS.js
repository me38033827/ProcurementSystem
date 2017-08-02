function setRadioChecked(name,value) {
	var radio = document.getElementsByName(name);
	for (var i = 0; i < radio.length; i++) {
		if (radio[i].value == value){
			radio[i].checked = true;
			break;
		}
			
	}
}