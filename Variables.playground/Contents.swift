import Foundation

// let variable - cannot change / reassign variable(constant)
// var variable - can be reassigned / mutated
//e.g
let myVariable = "foo"
let yourVariable = "foofoo"
var variables = [myVariable, yourVariable]
variables.append("foobar") //mutation of new value into variable array
let foo = "foo"
//var foo2 = foo // you can assign a var variable to a let variable and the var variable will take on the value type of the let variable foo which is of type ‘string’
var foo3 = "hi"
//let foo = foo3 // This will likely throw an error as let variables cannot be reassigned after being declared.

let moreVariables = ["foo", "bar"]
var copy = moreVariables // copies over values and value type of let variable 'moreVariables'
copy.append("buzz") // this does not affect the components of moreVariables as the changes only apply to the copy variable
print(moreVariables)
print(copy)
//Another way to make an array mutable irregardless of if its a let or var is by declaring it as follows:
let oldArray = NSMutableArray( array:
[ "foo", "fow"] )
oldArray.add("bazz")
var newArray = oldArray
newArray.add("lux")
print(newArray)
print(oldArray)

