/* 
 In phase-0-tracks/js, create a file called explore.js.
 Ruby has lots of handy functions like .reverse, but in JavaScript, we mostly have to write our own.
 In comments, pseudocode a function that takes a string as a parameter and reverses the string. reverse("hello"), 
 for example, should return "olleh". This isn't a task specific to JavaScript -- your pseudocode should be in plain
 English and use phrases like "for each" instead of JavaScript-specific terms.
 Remember that you can add strings in JavaScript, so '' + 'a' would result in the string 'a'.
 Take your time. This is the most valuable skill in programming: being able to think through a problem logically.
 Under your commented pseudocode, implement your function in JavaScript. Test it with driver code if you like.
 Anytime you'd like to run your code, you can run node explore.js from the js folder in your terminal,
 similar to how you run Ruby programs.
 Add driver code that calls the function in order to reverse a string of your choice
 (as long as it's not a palindrome!), and stores the result of the function in a variable.
 Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.
*/
// Problem - take a string and reverse it ie reverse("hello")
// Input - a string, start by feeding the function the required string as user input is unkown at this point
// Steps - We know that javascript can index through a string and can determine string length, TEST NEGATIVE INDEXES --

// -- Step 1. Declare the function
function reverseString(str) {
// -- Step 2. Create an empty string that will host the new created string    
    var newString = "";
// -- Step 3. Create the FOR loop
/* The starting point of the loop will be something like (str.length - 1) which corresponds to the 
       last character of the string, "Hell'o'"
      - As long as i is greater than or equals 0, the loop should go on
      - We decrement i after each iteration */
    for (var i = str.length - 1; i >= 0; i--) { 
        newString += str[i]; // or newString = newString + str[i];
    }
// -- Step 4. Return the reversed string
	return newString; // "olleh"
// TEST CODE
//	console.log(newString);
// -- Step 5. Close the function
}     

// DRIVER CODE

var test = 1;
if (test == 1); {
  //reverseString('Potatoe Chip');
  var test_str = "Potatoe Chips";
  console.log(test_str);
  console.log(reverseString(test_str));
}
