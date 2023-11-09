import Foundation

//enumerations are categorisations of elements by name, you can put them inside an enumeration
///how a general struct looks like with its implementation
struct Animal{
    let type: String
    init(type: String){
        if type == "Rabbit" || type == "Dog" || type == "Cat" {
            self.type = type
        }else{
            preconditionFailure()
        }
    }
}

//Animal(type: "Bike")


//create an enum with the above cases and instantiate it
enum Animals{
    case cat
    case dog
    case rabbit
}

let cat = Animals.cat
let dog = Animals.dog
let rabbit = Animals.rabbit

if cat == Animals.cat{
    "This is a cat"
}else if cat == Animals.dog{
    "This is a dog"
}else{
    "This is something else."
}

//do not compare an enum instance to an interger

//using switch statements
//ensure that everytime you create a new enum instance ensure to also modify any calling instance to that enum
func describeAnimal(_ animal: Animals){
    switch animal{
    case .cat:
        "This is a cat"
        break
    case .dog:
        "This is a dog"
        break
    case .rabbit:
        "This is a rabbit"
        break
    //default:   --default case
        //"This is something else"
    }
}

describeAnimal(cat)

//passing arguments to enums
enum Shortcut{
    case filefolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path: URL(string:"https://apple.com")!)


//swift created switch
switch wwwApple{
case .filefolder(
    path: let path,
    name: let name):
    path
    name
    break
case .wwwUrl(
    path: let path):
    path
    break
case .song(
    artist: let artist,
    songName: let songName):
    artist
    songName
    break
}

//simplified version
switch wwwApple{
case .filefolder(
    let path,
    let name):
    path
    name
    break
case .wwwUrl(
    let path):
    path
    break
case .song(
    let artist,
    let songName):
    artist
    songName
    break
}

//much much simplified version
switch wwwApple{
case let .filefolder(
    path,
    name):
    path
    name
    break
case let .wwwUrl(
    path):
    path
    break
case let .song(
    artist,
    songName):
    artist
    songName
    break
}

//unpacking values in switch case
if case let .wwwUrl(path) = wwwApple{
    path
}

let withoutYou = Shortcut.song(artist: "Symphony X",
                               songName: "without you")

//get song name from enum
//pass underscore to ignnore artist value
if case let .song(_, songName) = withoutYou{
    songName
}


//enumerations with associated values
///example enum: Vehicle using cases
enum Vehicle{
    case carz(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
}


let carz = Vehicle.carz(manufacturer: "Tesla", model: "X")
//To extract values in car implement the following:
switch carz{
case let .carz(
    manufacturer, _):
    manufacturer
    break
case let .bike(manufacturer, _):
    manufacturer
    break
}


let bike = Vehicle.bike(manufacturer: "HD", yearMade: 2023)
//To extract values in bike implement the following:
switch bike{
case let .carz(
    manufacturer, _):
    manufacturer
    break
case let .bike(manufacturer, _):
    manufacturer
    break
}

//create a function that implements the above example in a simpler way

func getManufacturer(from vehicle: Vehicle)-> String{
    switch vehicle{
    case let .carz(
        manufacturer, _):
        return manufacturer
    case let .bike(manufacturer, _):
        return manufacturer
    }
}


getManufacturer(from: carz)
getManufacturer(from: bike)

//another way is to put the fuction above inside the Vehicle enum as follows:
enum Vehicle2{
    case car2(manufacturer: String, model: String)
    case bike2(manufacturer: String, yearMade: Int)
    
    func getManufacturer()-> String{
        switch self{
        case let .car2(
            manufacturer, _):
            return manufacturer
        case let .bike2(manufacturer, _):
            return manufacturer
        }
    }
}

//get manufacture for bike and car
let carr = Vehicle2.car2(manufacturer: "Tesla", model: "X")
let bikee = Vehicle2.bike2(manufacturer: "HD", yearMade: 2023)

carr.getManufacturer()
bikee.getManufacturer()

//enums can have computer properties which instead of calling the fuction you call the property
enum Vehicle3{
    case car3(manufacturer: String, model: String)
    case bike3(manufacturer: String, yearMade: Int)
    
    var manufacturer: String{
        switch self{
        case let .car3(
            manufacturer, _),
        let .bike3(manufacturer, _):
            return manufacturer
        }
    }
}

let carrr = Vehicle3.car3(manufacturer: "Tesla", model: "X")
let bikeee = Vehicle3.bike3(manufacturer: "HD", yearMade: 2023)

carrr.manufacturer
bikeee.manufacturer

//enumeration with raw values:
enum FamilyMember: String{
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue
FamilyMember.brother.rawValue

//extracting all cases for enums using caseIterable
enum FavoriteEmoji: String, CaseIterable {
    case blush = "☺️"
    case rocket = "🚀"
    case fire = "🔥"
}

FavoriteEmoji.allCases
//To get the raw values
FavoriteEmoji.allCases.map(\.rawValue)
//get individual value
FavoriteEmoji.blush

//check if value exists in enum

//true case
if let blush = FavoriteEmoji(rawValue: "☺️"){
    "Found the blush emoji"
    blush
}else{
    "This emoji doesn't exist"
}

//false case
if let blush = FavoriteEmoji(rawValue: "😇"){
    "smiling Angel exists? how??"
    blush
}else{
    "As expected,smiling angel emoji doesn't exist"
}


//mutating members of an enum
enum Height{
    case short, medium, long
    mutating func makeLong(){
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
myHeight

//recursive enumerations - enumerations that refer to themself
indirect enum IntOperation{
    case add(Int, Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
}
