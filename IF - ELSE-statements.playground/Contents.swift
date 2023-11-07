import Foundation

let myName = "Angela"
let myAge = 27
let yourName = "Mike"
let yourAge = 20
// If/else statements
if myName == "mike"{
"You’re name is \(myName)"
}
else{
"Guessed the name wrong"
}


// Nested if statements
if myName == "Mike" {
" You guessed the right name"
}
else if myName == "Angela"{
"Are you Angela?"
}
else{
"Okay I give up"
}



//lets say you want to check both name and age with nesting your if statements:
if myName == "Angela"{
if myAge == 27{
"Your name is \(myName) and your age is \(myAge)"
}
}
else{
"You’re clearly confused"
}



//lets say you want to check both name and age without nesting your if statements:
if myName == "Angela" && myAge == 27{
"Your name is \(myName) and your age is \(myAge)"
}
else{
"You’re clearly confused"
}



// lets say you want to check if one of the conditions are true
if myAge == 27 || myName == "Angela"{
"Either age is 27, name is Angela or both"
}
// The use of parentheses assist in the order of precedence of how your statement will be executed. E.g
if (myName == "Angela" && myAge == 27)
&&
(yourName == "Mike" || yourAge == 20){
"My name is Angela and I am 27 AND Your name is Mike ….OR… you are 20."
} // less likely to use this type of implementation in swift

