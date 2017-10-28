//: Playground - noun: a place where people can play

import UIKit

extension Int {
    var isEven : Bool {
        return (self % 2) == 0
    }
    
}

/*****************************************************************
* Optional Chaining: is a process for querying and calling properties, methods,
*                    and subscripts on an optional that might currently be nil.
*****************************************************************/




/*****************************************************************
* 1. Forced Unwrapping
*****************************************************************/
let num11 : Optional<Int> = 5
let num22 : Optional<Int> = Optional<Int>.some(5)
num11?.isEven


Optional<Int>.none
Optional<Int>.some(5)
Optional<String>.some("str") == Optional<String>.some("str")
Optional<String>.some("str") == "str"
Optional<String>.some("str")! == Optional<String>.some("str")!


var num1 : NSNumber? = 5
var num2 : NSNumber? = 5
num1 == num2
num1!.isEqual(to: num2!)
//NSStringFromClass(num1._bridgeToObjectiveC().classForCoder)

var str1 : NSString? = "str"
var str2 : NSString? = "str"
str1 == str2
str1! == str2!
str1!.isEqual(str2) // NSObjectProtocol
str1 === str2

var obj1 : NSObject? = NSObject()
var obj2 : NSObject? = NSObject()
obj1 == obj2
obj1! is NSObject
obj1 === obj2
obj1?.isEqual(obj2)

/*****************************************************************
 * In a type declaration the ! is similar to the ?.
 * Both are an optional, but the ! is an "implicitly unwrapped" optional.
 * meaning that you do not have to unwrap it to access the value
 * (but it can still be nil).
 *****************************************************************/
var implicitlyUnwrappedOptional : Int!

//implicitlyUnwrappedOptional.isEven
//implicitlyUnwrappedOptional - 5
implicitlyUnwrappedOptional = 5

/*****************************************************************
* 2. Optional Chaining
*   Accessing Properties Through Optional Chaining
*   Calling Methods Through Optional Chaining
*   Accessing Subscripts Through Optional Chaining
*   Linking Multiple Levels of Chaining
*   Chaining on Methods with Optional Return Values
*****************************************************************/

/*****************************************************************
*   Accessing Properties Through Optional Chaining
*****************************************************************/
class Person {
    var residence: Residence?
}

class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingNumber != nil {
            return buildingNumber
        } else {
            return nil
        }
    }
}

class Residence {
    
    var address: Address?
    
    var rooms = [Room]()
    
    var numberOfRooms: Int {
        return rooms.count
    }
    
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
}

let john = Person()
//let roomCount = john.residence!.numberOfRooms // this triggers a runtime error

var roomCount = john.residence?.numberOfRooms


john.residence = Residence()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

let roomCount2 = john.residence?.numberOfRooms
if roomCount2! > 0 {
    print("John's residence has \(roomCount2!) room(s).")
} else {
    print("John's residence has 0 room(s).")
}



/*****************************************************************
*   Calling Methods Through Optional Chaining
*****************************************************************/
john.residence?.printNumberOfRooms()



/*****************************************************************
*   Accessing Subscripts Through Optional Chaining
*****************************************************************/
let johnsHouse = Residence()
johnsHouse.rooms.append(Room(name: "Living Room"))
johnsHouse.rooms.append(Room(name: "Kitchen"))
john.residence = johnsHouse

if let firstRoomName = john.residence?[0].name {
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}



/*****************************************************************
*   Linking Multiple Levels of Chaining
*****************************************************************/


let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
john.residence?.address = someAddress

if let johnsStreet = john.residence?.address?.street {
    print("John's street name is \(johnsStreet).")
} else {
    print("Unable to retrieve the address.")
}







/*****************************************************************
*   Chaining on Methods with Optional Return Values
*****************************************************************/
john.residence?.address?.buildingIdentifier()

if let buildingIdentifier = john.residence?.address?.buildingIdentifier() {
    print("John's building identifier is \(buildingIdentifier).")
}


if let beginsWithThe = john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    print("John's building identifier begins with \"The\".\(beginsWithThe)")
} else {
    print("John's building identifier does not begin with \"The\".")
}

if let beginsWithThe = john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWithThe {
        print("John's building identifier begins with \"The\".")
    } else {
        print("John's building identifier does not begin with \"The\".")
    }
}































