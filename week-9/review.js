// JavaScript Grocery List

/* User stories
- As a shopper, I can create a grocery list.
- As a shopper with a list, I can add an item to the list.
- As a shopper w/ a list, I can remove an item from the list.
- As a shopper with items on a list, I can update quantities of those items
- As a shopper, I can print my list to the console in a pleasing way.
*/

/*Pseudocode:
make a list
DEFINE makeList function that accepts array of grocery items
  VAR listLength = groceries.length
  FOR loop through each item in array
    pass it into list object and set quantity to one

add an item to a list
DEFINE addItem function that accepts a list object and item string
  list.itemname = 1

remove item from list
DEFINE removeItem function that accepts list obejct and item string
  delete listname.item

update quantity
DEFINE updateQuantity function that accepts list obj, item string, new quantity.
  listName.itemName = quantity

print list
DEFINE function that accepts listName
  print "Things to grab at the store:"
  FOR each var in obj
  quantity, item + s

*/

function makeList(groceries) {
    var listlength = groceries.length
    var list = {}
    for (i=0; i < listlength; i++) {
        var grocery = groceries[i]
        list[grocery] = 1;
    }
    return list
}

function addItem(listName, itemName) {
  listName[itemName] = 1
  return listName
}

function removeItem(listName, itemName) {
  delete listName[itemName]
  return listName
}

function changeQuantity(listName, itemName, quantity) {
  listName[itemName] = quantity
  return listName
}

function printPretty(listName){
  console.log("Grab these items from the store:")
  for (var item in listName){
    quantity = listName[item]
    if (quantity > 1){
      var esser = "s"
    }
    else {
      var esser = ""
    }
    console.log(quantity + " " + item + esser)
  }
}

//test code

//create list
var my_list = makeList(["apple", "carrot", "watermelon"])
//console.log(my_list)

//add item
addItem(my_list, "bread")
//console.log(my_list)

//remove item
removeItem(my_list, "apple")
//console.log(my_list)

//change quantity
changeQuantity(my_list, "bread", 4)
//console.log(my_list)

//print pretty
printPretty(my_list)

//refactored:
/* Tried to refactor like I did with the ruby one but can't quite
combine update and change quantity in the same way. I think what
I've got is pretty clean.
*/

/* Reflection
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

I solidified javaScript looping and getting into nested objects. It
was much easier than it was in 8.3!

What was the most difficult part of this challenge?

I honestly struggled the most with the very first function, the
one that creates the list. I was using dot notation when only
bracket notation seemed to work. I need to review why that is again.
I know it makes sense!


Did an array or object make more sense to use and why?
I used an object. It made sense to me because I needed to manipulate
the quantities of the items on the list. So it was a lot more of a
key/value pair type thing. I think making an array of variables
could also work. There would just be different methods used
to call the functions.