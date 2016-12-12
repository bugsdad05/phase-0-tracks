/*
1. Add a file called algos.js to the phase-0-tracks/js folder.
2. In algos.js, write a function that takes an array of words or phrases and returns the
  longest word or phrase in the array. So if we gave your function the array of 
  ["long phrase","longest phrase","longer phrase"], it would return "longest phrase".
   This is a logical reasoning challenge, so try to reason through this based on what you
    already know, rather than Googling the fanciest solution or looking up built-in
    sorting functions. Note that "some string".length will do what you expect in JS.
3. Add driver code that tests your function on a few arrays.
*/

/*
Write a function that takes an array of words or phrases and returns the
longest word or phrase in the array.

input: the function will need to take in an array of 'strings' (words or phases)
steps: 
	1. iterate thru the array
	2. for string at index[0] determine length storing it for comparison (MAYBE USE SOMETHING LIKE .LENGTH)
	3. repeat step 2 for all elements in the array - this means the storage vessel for the 'length' found will 
		need to be an array. (MAY BE ABLE TO USE SOMETHING SIMILIAR TO A BUBBLE SORT???)
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
	console.log(longAry);
}

// TEST CODE
var stringArray1 = ["long string", "longest string", "longer string"];
console.log (longestPhrase(stringArray1));