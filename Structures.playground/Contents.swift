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
//Another way to write the above code is to remove the initialization as its not necessarily the best use

struct CommodoreComputerSimple {
    let name: String
    let manufacturer = "Commodore"
    //init(name: String){
        //self.name = name
        //self.manufacturer = "Commodore"
    //}
}


let c65 = CommodoreComputerSimple(name: "c65")
c65.name
c65.manufacturer



//create a struct for person that generates a persons name when called
struct PersonInfo{
    let firstName: String
    let lastName: String
    var fullName: String{
        "\(firstName) \(lastName)"
    }
}
        
let details = PersonInfo(
    firstName: "John",
    lastName: "Doe")

details.fullName


//Structs dont allow for mutations, the following will give an example of a funtion that can change/update a struct

struct Car{
    var currentSpeed: Int
    mutating func drive(speed: Int) //this fuction allows the instance to change
    {
        "Driving....."
        currentSpeed = speed
    }
}


var mutableCar = Car(currentSpeed: 10) //note that using a let will cause an error as it would assume you're trying to change a contant value.
mutableCar.drive(speed: 20)

var copy = mutableCar //create a copy of mutable car which allows for new instance that has no effect of the mutable value

mutableCar.currentSpeed
mutableCar.drive(speed: 30)
copy.currentSpeed
copy.drive(speed: 20)




//structures cannot inherit from each other but you can create a way to do so
// create a function in your struct

struct Bike{
    let manfacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int)-> Bike {
        Bike(
            manfacturer: self.manfacturer,
            currentSpeed: currentSpeed
        )
    }
}


let bike1 = Bike(manfacturer: "HD", currentSpeed: 20)

let bike2 = bike1   


