 // JavaScript Olympics

// I paired [with: Sabri] on this challenge.

// This challenge took me [.8] hours.

/*


}


*/

// Bulk Up

function win(array) {
  for (var i= 0; i < array.length ; i ++){
    array[i].win = array[i].name + " won the " +array[i].event +" event!";

  console.log(array[i].win);
  }

}

//driver code
win([{name:"Lebron James",event:"Basketball"},{name:"Michael Phelps",event:"Swimming"}])


// Jumble your words
function reverser(string){
 var reverseString= string.split("").reverse().join("");
  console.log(reverseString);
}

//driver code
reverser("California")


// 2,4,6,8
function justEvens(numbers){
  var evenArray = []
  for (var i=0; i <numbers.length; i++){
    if (numbers[i] % 2 == 0){
      evenArray.push(numbers[i]);
    }
  }
  console.log(evenArray)
}

//driver
justEvens([2,3,4,5,7,8,9])


// "We built this city"


function Athlete(name,age,sport,quote){
  this.name = name
  this.age = age
  this.sport = sport
  this.quote = quote
}

//driver code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/*
What JavaScript knowledge did you solidify in this challenge?

I solidified a few more syntax things. Things that I just need to
repeat a few more times before they'll really stick.

What are constructor functions?

Constructor functions seem like great ways to create several similar
variables. They take in the properties of a variable as arguments
and spit out a nicely made variable.

How are constructors different from Ruby classes (in your research)?

I guess they're pretty similar. I hadn't thought about it that way.
I'm not sure if they have anything like inheritance (more research
is needed I guess!) or the attr methods.

*/
