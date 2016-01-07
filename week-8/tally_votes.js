// Tally Votes in JavaScript Pairing Challenge.


// I worked on this challenge with: Angelika
// This challenge took me [3] hours.



// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}



// __________________________________________
// Initial Solution

for (var key in votes)
{
   if (votes.hasOwnProperty(key))
   {
      var voterName = votes[key];
      for (var positionName in voterName)
      {

          if(voterName.hasOwnProperty(positionName))
          {

            voteCount[positionName][key] = 0;
          }
      }
    }

};

for (var key in votes)
{
   if (votes.hasOwnProperty(key))
   {
       var voterName = votes[key];

        for (var positionName in voterName)
        {

          if(voterName.hasOwnProperty(positionName))
          {
            voteCount[positionName][voterName[positionName]] +=1;
          }
        }
    }
};





// console.log(voteCount);



var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
};

for (var positionName in voteCount)
{
    var winningVoteCount = 0;
    var office = voteCount[positionName];
    var candidateName = "";
    for (var name in office)
    {
      if (office[name] > winningVoteCount)
      {
        winningVoteCount = office[name];
        candidateName = name;
      }
    }
    officers[positionName] = candidateName;
    console.log(candidateName + " was elected for " + positionName + " with " + winningVoteCount
      + " votes.");
}


// __________________________________________
// Refactored Solution
//Didn't get to this yet.





// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?

I learned it's somewhat of a nightmare. I learned that I have a lot
to learn. It seems like we needed to use the "hasOwnProperty" stuff
at the start but then figured out a way around it at the very end
but declaring some extra variables. I still don't fully understand.

Were you able to find useful methods to help you with this?

Yes. The hasOwnProperty tests did help.
I still need to go back and refactor, but I am currently
drained. This is the longest I've worked on a single challenge. I
know I will have to do this a lot more in the future! Maybe I will
update my reflections when I go back and refactor later.

What concepts were solidified in the process of working through this challenge?

I learned a lot about nested objects in javascript and how to get
at the property I'm trying to get at. But I wouldn't say it's
totally solidified.
*/





// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)