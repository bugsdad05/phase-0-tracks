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


//start a automobile constructor
// var car = {vin: 0, make: '', model: ''};

function Car(vin, make, model) {
 console.log("Car specifications:", this);
 this.vin = vin;
 this.make = make;
 this.model = model;
 this.sound = function() {
   console.log('Man this car sounds awesome!!!');
 }

 console.log("Car Initialization completed...");
}

// auto constructor code

var firstCar = new Car(23456, 'Porsche', 'Carrera 911 4S');
console.log(firstCar);
console.log(firstCar.sound());