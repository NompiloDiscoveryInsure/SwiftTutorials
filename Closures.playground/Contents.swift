import Foundation

//Example of how a function would look like
func add(_ lhs: Int, _ rhs: Int )-> Int{
    lhs + rhs
}
//create closure:
//first assign data type of closure
//declare or create function
let add: (Int, Int) -> Int
= { (lhs: Int, rhs: Int) -> Int in
lhs + rhs
}
//invoke function
add(20,30)

//function that passes a function as a parameter to show use of closures.
func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int) -> Int{
        function(lhs,rhs)
    }

customAdd(30,20)
{(lhs: Int, rhs: Int)->Int in
    lhs + rhs
}

//simplified version of method invocation
customAdd(30,20)
{(lhs, rhs)->Int in
    lhs + rhs
}

 //Another way is to use the dollar $ sign to incate that what shall follow is a required argument.
customAdd(30,20){
    $0 + $1
}


// Passing special fuctions to closures
let ages = [30, 20, 19, 40]

//sorting array
//ages.sorted(by: {(lhs: Int, rhs: Int)->Bool in
 //   lhs > rhs
//}
            
//simplified form
ages.sorted(by: >)
ages.sorted(by: <)


//trailing closures
func customAdd2(
    using function:(Int, Int)-> Int,
    _ lhs: Int,
    _ rhs: Int
    ) -> Int{
     function(lhs,rhs)
    }

//invoke function
customAdd2(
    using: {(lhs, rhs) in
        lhs + rhs
    }, 20, 30)

//shorter version
customAdd2(using: { $0 + $1}, 20,30)


//passing normal functions to closures
func add10To(value: Int)->Int{
    value + 10
}


func add20To(value: Int)->Int{
    value + 20
}
            

func doAddition(on value: Int,
                using function: (Int)->Int)
-> Int{
    function(value)
}

//manual invocation
doAddition(on: 20){
    (value) in
    value + 30
}

//invocation passing function
doAddition(on: 20,
           using: add10To(value:))

doAddition(on: 20,
           using: add20To(value:))





