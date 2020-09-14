var colors = ["green", "orange", "purple", "turqoise"];

function loadColors(){
	document.getElementById("colors").innerHTML = colors;
}


function myFunction() {
	var color = prompt("What is your favorite color? ");
	colors[colors.length] = color;
	document.getElementById("colors").innerHTML = colors;
}