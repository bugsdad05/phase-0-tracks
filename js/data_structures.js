var colors = ["Blue", "Green", "Red", "Yellow"];
var names = ["Ed", "Sea Biscuit", "Flicka", "Secretariat"];

var horse = {}
var horses = [];
for (var i = 0; i < names.length; i++) {
	horse[i] = {name: (names[i]), color: (colors[i])};
	horses.push(horse[i]);
	//horses['color'] = colors[i];
	console.log(horse[i]);	
}


console.log(horses);
