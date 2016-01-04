/*
// USER STORIES - PERSON 1
// As a user given a container of numbers, I would like a way to sum all the numbers of that container together.
// As a user given a container of numbers, I would like a way to find the mean of those numbers.
// As a user given a container of numbers, I would like a way to find the median of those numbers.
//PSEUDOCODE
*/

/*
Function Sum
Input(array)
-Set counter to 0
-Iterate each item in the array
  -add current item to counter
Function Mean
Input(array)
-determine length of the array
-use SUM function to determine sum
-divide sum by length of the array
Function median
Input(array)
-sort array
-determine middle point of array (length/2) rounded down
-if array odd return middle number
-else array even return average of two middle numbers
*/
//CODE

// We ran out of time on our challenge so person 2 ended up doing my
//(person 3)'s coding to make sure we got our challenge done in time.
// I completed my person 3 code without looking at person 2's version
//of the code so I could get some practice on the challenge.
//-Steven

function sum(numbers){
    var adder = 0
  for (var i = 0; i < numbers.length; i ++)
    var adder = adder + numbers[i];
  return adder
}

function mean(numbers){
  var len = numbers.length
  var adder = sum(numbers)
  return (adder/len)
}

function median(numbers){
  var sorted = numbers.sort();
  var mid = (sorted.length/2);
  var mid = Math.floor(mid)
  if (sorted.length % 2 == 0){
      var answer = (sorted[mid-1] + sorted[mid])/2
  }
  else{
      var answer = sorted[mid]
  }
  return answer
}







// var sum = function(arr){
// // initialize counter
//   var counter = 0
// // iterate array and add each item to counter
//   for(var i = 0; i < arr.length; i++){
//     counter += arr[i]
//   }
//   return counter
// };



// var mean = function(arr){
// //invoke sum function from above to determine sum
//   var add = sum(arr);
// //calculate average. sum / length of array
//   return add/arr.length
// };



// var median = function(array){
// //   sort array
//   var arr = array.sort(function(a, b){return a-b});
// //   determine middle point of array
//   var div = arr.length/2
//   div = Math.floor(div)
// //   if array odd return middle #
//   if(arr.length % 2 !== 0)
//   {
//     return arr[div]
//   }
// //   if array even average the two middle numbers
//   else
//   {
//     return (arr[div] + arr[div-1])/2
//   }

// };
