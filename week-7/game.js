// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Create a player vs. Dealer blackjack game
// Goals: To create a functional blackjack game w/o money and betting involved at first.
// Characters: dealer / player
// Objects: deck of cards, each player's hand
// Functions:
/* -Possibly a constructor function that makes my deck of cards for me
so I don't have to input 52 variables.
- Deal function
- Hit or stay function
- Aces function
- calc winner function
- randomize suits for now


// Pseudocode
/*
Create a card deck using 2 functions, 1 passes info in, one is the
constructor.

Constructor buildDeck(name,value)
  name = name
  value = value


var Ace = new BuildDeck("Ace", 1)
etc


hit function
randomly select a card from the deck and return it and add it to
whoever's total hit.

deal function
  hit twice for player
  hit twice for dealer
*/


//Initial Code

function buildDeck(name,value){
  this.name = name
  this.value = value
}


var ace = new buildDeck("Ace", 1);
var two = new buildDeck("Two", 2);
var three = new buildDeck("Three",3);
var four = new buildDeck("Four", 4);
var five = new buildDeck("Five", 5);
var six = new buildDeck("Six",6);
var seven = new buildDeck("Seven", 7);
var eight = new buildDeck("Eight",8);
var nine = new buildDeck("Nine",9);
var ten = new buildDeck("Ten",10);
var jack = new buildDeck("Jack", 10);
var queen = new buildDeck("Queen",10);
var king = new buildDeck("King",10);



var deck = [ace,two,three,four,five,six,seven,eight,nine,ten,jack,queen,king]

//console.log(deck)


function hit(){
  var nextCard = deck[Math.floor(Math.random() * deck.length)];
  return nextCard
}
function deal() {
  var playerTotal = 0
  var playerCard1=hit()
  var playerCard2=hit()
  var dealerCard1=hit()
  var dealerCard2=hit()
  var playerTotal = playerCard1.value + playerCard2.value
  var dealerTotal = dealerCard1.value + dealerCard2.value
  console.log("You've got a " + playerCard1.name + " and a " + playerCard2.name)
  console.log("Your total is " + playerTotal)
  console.log("Dealer shows a " + dealerCard1.name)
}

var readline = require('readline');

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// rl.question("What do you think of node.js? ", function(answer) {
//   console.log("Thank you for your valuable feedback:", answer);

//   rl.close();
// });

function wantToPlay(){
  rl.question("Shall we play a hand?(y or n)", function(answer){console.log("Great,");
  rl.close()
  });
  console.log(rl)
}

wantToPlay()


function gamePlay(play){
  var play = wantToPlay()
  if (play == "y"){
    deal()
  }
  else {
    console.log("Thanks for stopping by!")
  }
}






// Refactored Code






// Reflection
//
//
//
//
//
//
//
//