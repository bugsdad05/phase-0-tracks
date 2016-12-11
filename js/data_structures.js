
/*
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
*/


//----------------------------------------------

//Module 7.2 RJ Arena paired with Jim Miller - Mandatory Pairing
//routines for release 1 and 2

var names = ["Ed", "Sea Biscuit", "Flicka", "Secretariat"];  //horse names array
var colors = ["Blue", "Green", "Red", "Yellow"];  //horse colors array
var weights = [2000, 2100, 1800, 2300];  //horse weights array
var tripleCrown = [false, false, false, true]; //horse triple crown wins array

var horse = {};    // horse object container
var horses = [];   // array of horse objects

colors.push("Brown"); // add a color to 'colors' array
names.push("Seattle Slew"); // add a name to 'names' array
weights.push(2200);  // add a weight to 'weight' array
tripleCrown.push(true); // add win to 'triple crown wins' array

for (var i = 0; i < names.length; i++) {            // initiate for loop, define the counter
  horse[i] = {name: names[i], color: colors[i],     // add a horse object to horse{} on each iteration
    weight: weights[i], crown: tripleCrown[i]};
  horses.push(horse[i]);   // push each horse object into the horse[] on each iteration
  console.log(horse[i]);  // console out horse object
}
console.log(horses);      // console out array of horse objects

//start a automobile constructor
// var car = {vin: 0, make: '', model: ''};

function Car(vin, make, model) {   // initialize a constructor function 'Car' with 3 attributes
  this.vin = vin;  // similiar to @vin = vin in ruby
  this.make = make;
  this.model = model;
  this.sound = function() {   // declares a funtion 'sound' as an attribute of 'Car'
    console.log('Man this car sounds awesome!!!');
  }
  console.log("Car specifications:", this);  // console out (ie. 'puts') a string including each 'this' attribute
  console.log('Car Initialization completed...');
} 

// auto constructor code

var firstCar = new Car(23456, 'Porsche', 'Carrera 911 4S'); // initialize a new instance of 'Car'
firstCar.color = 'midnight blue'; // add new property
console.log(firstCar);
console.log(firstCar.sound());
var secondCar = new Car(97845, 'Mazda', 'RX-7'); // initialize a new instance of 'Car'
secondCar.color = 'slate silver';
secondCar.tires = 'Pirelli'; // add a new property
//simple printout of secondCar object, with added properties
console.log(secondCar);
// print out keys for firstCar object
console.log(Object.keys(firstCar));
//print out key value pairs for second car object
Object.keys(secondCar).forEach(function(key){
  console.log(key, secondCar[key]);
});