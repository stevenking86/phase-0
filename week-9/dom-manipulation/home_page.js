// DOM Manipulation Challenge


// I worked on this challenge [with: David Rothschild].


// Add your JavaScript calls to this page:

// Release 0:



// Release 1:
var releaseOne = document.getElementById('release-0');
releaseOne.classList.add("done");



// Release 2:

var releaseTwo = document.getElementById('release-1');
releaseTwo.style.display = 'none';


// Release 3:

var releaseThree = document.getElementsByTagName('h1');
console.log(releaseThree);
releaseThree[0].innerHTML = "I completed Release 2";




// Release 4:

var releaseFour = document.getElementById('release-3');
releaseFour.style.backgroundColor = "#955251";


// Release 5:

var releaseFive = document.getElementsByClassName('release-4');
for (var i = 0, length = releaseFive.length; i < length; i++) {
  releaseFive[i].style.fontSize = "2em";
}

// Release 6:

var templ = document.getElementById('hidden');
document.body.appendChild(templ.content.cloneNode(true));