import Foundation

// create function
func functionName(){
"No return value/type or input parameter values"
}


// invoke function
functionName() //will return above string


//functions with arguments
func plusTwo(value: Int){
let newValue = value + 2
}
plusTwo(value:30) //returns 32


//functions with arguments with return value/type
func newPlusTwo(value: Int) -> Int{
value + 2
}
newPlusTwo(value:30) //returns 32


// functions with more than one parameter
func customAdd(
value1: Int,
value2: Int) -> Int {
value1 + value2
}


//you can assign function output to a variable
let customAdded = customAdd(value1: 20 , value2: 30) // customAdded will be equal to 50.
//external and internal values - use underscore to declare parameter values so as to not directly reference them when invoking your function
//E.g
func customMinus(
_ lhs: Int,
_ rhs: Int) -> Int {
lhs - rhs
}
let customSubtracted = customMinus(30,20) // returns 10


//scenarios in which you sometimes want to ignore the return value while in other cases you want to know the return value. The @discardableResult attribute allows us to enable both cases without having to deal with annoying warnings or underscore replacements. Avoid unused variable error.
//E.g
@discardableResult
func myCustomAdd(
_ lhs: Int,
_ rhs: Int) -> Int {
lhs + rhs
}
myCustomAdd(30,20) //returns 50



// Functions in swift can contain functions of their own in them
//‘with’-external reference , ‘value’-internal reference
//E.g :
func doSomething( with value: Int
) -> Int {
func mainLogic(value: Int) -> Int {
value + 2
}
return mainLogic(value: value + 3)
}
doSomething(with: 30)

//predefined function parameters
func getFullName(
firstName: String = "Foo",
lastName: String = "Bar"
) -> String {"\(firstName) \(lastName)"
}
getFullName()

