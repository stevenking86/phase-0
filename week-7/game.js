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
- Hit function
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

Then pass in everything to that constructor function:
var ace = new BuildDeck("Ace", 1)
etc...


hit function
randomly select a card from the deck and return it and add it to
whoever's total hit.

deal function
  hit twice for player
  hit twice for dealer
  Assign those cards to variables

gameplay function (I'll put in the winner function idea in here)
  while player's total is less than 17
    hit
  if total is greater than 21
    "You busted"
  Same logic for dealer
  if player's total > dealer's total
    "You win"
  if totals are same
    "Push"
  else
    "You lose"
*/


//Initial Code

//Constructor function for building deck
function buildDeck(name,value){
  this.name = name
  this.value = value
}

//Sending to constructor function
var ace = new buildDeck("Ace", 11);
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


//deck array
var deck = [ace,two,three,four,five,six,seven,eight,nine,ten,jack,queen,king]

//Gets a random card from the array
function hit(){
  var nextCard = deck[Math.floor(Math.random() * deck.length)];
  return nextCard
}

//Does the work of initially dealing. Returns an array with values
//needed for the rest of the gameplay
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
  return [playerTotal, dealerTotal, dealerCard2]
}

//This deals with the rest of the gameplay. Dealer and Player
//both hit on 16 and not on 17. Getting 21 does not automatically
//trigger a win in this function.
function gamePlay(playerTotal,dealerTotal,dealerDownCard){
  while (playerTotal < 17){
    newCard = hit()
    console.log("You got a " + newCard.name)
    playerTotal += newCard.value
    console.log("Your new total is " + playerTotal)
    if (playerTotal > 21) {
      console.log("You've busted!")
      return playerTotal
    }
  }
  console.log("Dealer turns over a " + dealerDownCard.name)
  while (dealerTotal < 17){
    newCard = hit()
    console.log("Dealer got a " + newCard.name)
    dealerTotal += newCard.value
    console.log("Dealer's new total is " + dealerTotal)
    if (dealerTotal > 21) {
      console.log("Dealer Busted! You Win!")
      return dealerTotal
    }
  }
  if (playerTotal > dealerTotal)
    console.log("You win!");
  else if (playerTotal == dealerTotal)
    console.log("Push!");
  else
    console.log("Dealer wins!");


}
//Deals and stores values needed for gamePlay function
var dealInfo=deal()
// var playerTotal= dealInfo[0]
// var dealerTotal= dealInfo[1]
// var dealerDownCard = dealInfo[2]
// //Plays the rest of the game after the deal
// gamePlay(playerTotal,dealerTotal,dealerDownCard)



// Refactored Code
/*I worked on this in a different way than I normally do, refactoring
as I worked. I know it's not ideal for showing my work but basically
the code above has already been refactored and re-planned out from
my original ideas and psuedocode.

One thing I tried to implement was the idea of storing the player's
cards and total in one object called playerHand and doing the
dealer's the same way. In the end, I acutally didn't think it made
the program more readable or easy to manipulate in the gameplay loop.

*/

//I did refactor the way I call gamePlay to save myself defining all
//those variables:
gamePlay(dealInfo[0],dealInfo[1],dealInfo[2])




// Reflection
/*
What was the most difficult part of this challenge?

The most difficult part for me was trying to figure out how to get
user input through node. I worked for probably over an hour on this.
Finally I looked at the example from the start of this challenge
and realized that doing so wasn't even an important part of the
challenge. I just needed to call my functions from within the
program. Doing a better job readin the instructions could've saved
me the hardest part of this challenge!

What did you learn about creating objects and functions that interact with one another?

I think I learned the most about this a few challenges ago when we
had to give the objects a spouse and things like that. It made
my logic work easier in thi schallenge.


Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
How can you access and manipulate properties of objects?

The greatest thing I learned was something that could probably help
me in ruby as well. When refactoring I learned how to return multiple
variables from a function. It completely changed how my program worked. Technically I learned this when I was frustrated midway
through my initial solution, but I was refactoring as I went. It
seems obvious now - return them all in an array! It's a nice trick.

Properties of objects can be accessed using dots or brackets. I use
dots in my program to access the names and values of my cards.

Mostly I'm just really excited this thing works. I just keep running
my program to see how these hands of blackjack play out. It'd be
way better with interactive user input obviously!

*/