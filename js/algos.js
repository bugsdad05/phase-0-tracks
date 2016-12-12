/* INSTRUCTION SET
1. Add a file called algos.js to the phase-0-tracks/js folder.
2. In algos.js, write a function that takes an array of words or phrases and returns the
  longest word or phrase in the array. So if we gave your function the array of 
  ["long phrase","longest phrase","longer phrase"], it would return "longest phrase".
   This is a logical reasoning challenge, so try to reason through this based on what you
    already know, rather than Googling the fanciest solution or looking up built-in
    sorting functions. Note that "some string".length will do what you expect in JS.
3. Add driver code that tests your function on a few arrays.
*/

/* PSEUDOCODE
Write a function that takes an array of words or phrases and returns the
longest word or phrase in the array.

input: the function will need to take in an array of 'strings' (words or phases)
steps: 
	1. iterate thru the array
	2. for string at index[0] determine length storing it for comparison (MAYBE USE SOMETHING LIKE .LENGTH)
	3. repeat step 2 for all elements in the array - this means the storage vessel for the 'length' found will 
		need to be an array. (MAY BE ABLE TO USE SOMETHING SIMILIAR TO A BUBBLE SORT - JUST COMPARE TWO AT A TIME AND ASSIGN THE LONGEST TO A PLACE HOLDER???)
	4. iterate thru the 'length' array and find the largest number - (IF BUBBLE SORT STRATEGY WORKS THIS MAY NOT BE NECESSARY)
	5. match the largest number (maybe by index) with the original element and return - (IF BUBBLE SORT STRATEGY WORKS THIS MAY NOT BE NECESSARY)
 output: will return a string which must have been included in the original array of strings
*/

// declare function
function longestPhrase(ary) {
	this.ary = ary
	var longAry = []	
	for (var i = 0; i < ary.length-1; i++) {
		var idx = (i+1)
		if (ary[i].length > ary[idx].length) {
			longAry = ary[i];
		}else {
			longAry = ary[idx];
		}
		// console.log(i); - TEST CODE
	}
	// TEST CODE console.log(longAry);
	return longAry
}

// TEST CODE
var stringArray1 = ["long string", "longest string", "longer string"];
console.log(longestPhrase(stringArray1));
var stringArray2 = ['la;sdkadlfasdljfafiajsfjl;ljdhjhfjflsd', "klasjfjksdfhjksf", "a;djh;ashfkjhfkjsdfkasdhfkldsh"];
console.log(longestPhrase(stringArray2));

// i'M GETTING AN 'UNDEFINED' AS PART OF MY RETURN. NOT SURE WHAT THAT IS TELLING ME **** figured it out. forgot to return 'longAry' ****



/*
1. In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair.
 (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.)
 If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, 
 because at least one key-value pair matches between the two objects. 
 If no pairs match (and keep in mind that the two objects may not even have any of the same keys), 
 the function should return false. To make your life easier, don't worry about whether a property is a string ('age') 
 or an identifier name (age). Those can be considered equivalent. Again, try to reason through the problem using the basics 
 you've already learned, rather than looking up slick search functions that will do the job for you. 
 We'd rather see you write code that you actually understand!
2. Add some driver code that tests both outcomes of your function.
*/

/*
Write a function that takes two objects and checks to see if the objects share at least one key-value pair.

input: the function will need to take in a pair of objects (that look and act remarkably like hashes but aren't)
steps: 
	1. iterate thru the two objects looking for matching keys
	2. if matching keys = true, 
		a. iterate thru the two objects checking to see if the values paired with the matched key also match
		b. if matching value = true; return true
	3. if matching keys = false; return false

	3. repeat step 2 for all elements in the array - this means the storage vessel for the 'length' found will 
		need to be an array. (MAY BE ABLE TO USE SOMETHING SIMILIAR TO A BUBBLE SORT???)
	4. iterate thru the 'length' array and find the largest number - (IF BUBBLE SORT STRATEGY WORKS THIS MAY NOT BE NECESSARY)
	5. match the largest number (maybe by index) with the original element and return - (IF BUBBLE SORT STRATEGY WORKS THIS MAY NOT BE NECESSARY)
 output: will return a string which must have been included in the original array of strings
*/