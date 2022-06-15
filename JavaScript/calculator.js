function takeValue(x) {
	document.getElementById('inputwindow').value += x;
}

function clearInput(x) {
	document.getElementById('inputwindow').value = x;
}


function calculateResult() {
	let x = eval(document.getElementById('inputwindow').value);
	document.getElementById('inputwindow').value = x;
}


