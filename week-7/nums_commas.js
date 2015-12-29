// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
/*

3.FOR each digit in the string in reverse
4. IF digit index is MOD 4 equals 0
  5.Insert comma at index
6.Put array back into string
*/

// Initial Solution
// function seperateComma(integer){
//   var numString = integer.toString();
//   var numArray = numString.split("");
//   for (var i = -(numArray.length); i < 0; i ++){
//     console.log(i)
//     if (i % 3 == 0 && i != -(numArray.length)){
//       numArray.splice(i, 0, ",");
//     };
//   };
//   return numArray.join('');
// };

// console.log(seperateComma(1000000));
// 1,000,000


// Refactored Solution
/*
Input: integer
output: string with commas in the right place
Steps:
1.Turn integer into string
2.Turn string into array


*/
function seperateComma(integer){
  var numString = integer.toString();
  var numArray = numString.split("");
  for (var i = -3; i > -(numArray.length); i -=4){
    numArray.splice(i,0,",")
  };
  return numArray.join('');
};

console.log(seperateComma(1000000000));
var a = seperateComma(1000);
// Our tests

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (a === "1,000"),
  "The value of the a should be '1,000'",
  "1. "
)






// Reflection