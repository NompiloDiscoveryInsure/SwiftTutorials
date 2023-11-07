import Foundation

//Structures
struct Person{
    let name: String
    let age: Int
}

//invoke struct
let foo = Person(
    name: "Foo",
    age: 27)

//Get properties
foo.name
foo.age

//you dont need to create constructors for structures

struct CommodoreComputer {
    let name: String
    let manufacturer: String
    init(name: String){
        self.name = name
        self.manufacturer = "Commodore"
    }
}


let c64 = CommodoreComputer(name: "c64")
c64.name
c64.manufacturer
