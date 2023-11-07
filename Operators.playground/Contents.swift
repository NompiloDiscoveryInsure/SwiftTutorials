import Foundation

// > : greater than
// < : less than
// == : comparison operator
// = : assignment operator
// + : addition/ concatenation operator
// * : multiplication operator
// / : division operator
// - : subtraction
// % : modulus operator to extract remainder value
// ! : not

let younger = 13
let older = 38
if older > younger {
"I am your older"
}
else if younger < older{
"I am younger"
}
else{
"We’re the same age"
}

//There are 3 types of integers in swift:
//⁃ unary prefix : working with one value that has a operator before value.
//E.g
let foo = !true // operator ! is before value // returns false
//⁃ Unary postfix : works with one variable and assigns operator after a value
//E.g.
let name = Optional("nametag") // optional means the variable can contain no value
let unaryPostFix = name! // the ! Operator does a value or null check
//⁃ Binary infix : working with two values and has an operator in between. Eg. Let numberSum = 4 * 2
//⁃ Binary infix(concatenation) :
let Fullname = "John" + " " + "Doe"


//Itinerary operators : simpler implementation of conditionals

let age = 30
//below is the general implementation of conditionals:
let message : String
if age > 18 {
message = "you are an adult"
}
else{
message = "you are not yet an adult"
}
//The use of itinerary to implement above example
// let mesage = CONDITION
// ? VALUE IF CONDITION IS MET
// : VALUE IF CONDITION IS NOT MET

let message2 = age > 18
? "You are an adult"
: "You are not yet an adult"
