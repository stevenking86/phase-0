// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Steven"
console.log("Your name is " + name)

/* favorite food program:
prompt("What's your favorite food?"); console.log("Hey, that's my favorite food too")
*/





// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
/*
var counter = 1
while (counter < 101) {
  if (counter % 3 == 0 && counter % 5 == 0) {
    console.log("FizzBuzz");
    counter += 1;}
  else if (counter % 3 == 0) {
    console.log("Fizz");
    counter += 1;}
  else if (counter % 5 == 0) {
    console.log("Buzz");
    counter += 1;}
  else {
    console.log(counter);
    counter += 1;}
}
*/

// Functions

// Complete the `minimum` exercise.

function min(x,y) {
  if (x < y || x==y) {
    console.log(x)
  }
  else {
    console.log(y)
  }
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = ["Steven", 29, "tacos", "pizza", "kale/apple smoothies", "I have the same name as a famous author."]
console.log(me)