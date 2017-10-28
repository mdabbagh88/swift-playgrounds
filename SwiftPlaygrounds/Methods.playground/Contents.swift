// Playground - noun: a place where people can play

import UIKit



/*****************************************************************
* Instance Methods
*****************************************************************/
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func incrementBy(_ amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

let counter = Counter()
// the initial counter value is 0

counter.increment()
// the counter's value is now 1

counter.incrementBy(5)
// the counter's value is now 6

counter.reset()
// the counter's value is now 0




/*****************************************************************
* Modifying Value Types from Within Instance Methods
* struct + enum : must use keywork 'mutating'
* class: without any addtional writes
*****************************************************************/
struct Point {
    var x = 0.0, y = 0.0
    init() {
    }
    init(x:Double, y:Double) {
        self.x = x
        self.y = y
    }
    mutating func moveByX(_ deltaX: Double,_ deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
    }
}

//class Point {
//    var x = 0.0, y = 0.0
//    init() {
//    }
//    init(x:Double, y:Double) {
//        self.x = x
//        self.y = y
//    }
//    func moveByX(_ deltaX: Double, _ deltaY: Double) {
//        self.x += deltaX
//        self.y += deltaY
//    }
//}

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveByX(2.0, 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")




/*****************************************************************
* Assigning to self Within a Mutating Method
* only at (struct + enum) within 'mutating' method
*****************************************************************/
//struct Point {
//    var x = 0.0, y = 0.0
//    mutating func moveByX(deltaX: Double, y deltaY: Double) {
//        self = Point(x: x + deltaX, y: y + deltaY)
//    }
//}
//
//class Point {
//    var x = 0.0, y = 0.0
//    init() {
//    }
//    init(x:Double, y:Double) {
//        self.x = x
//        self.y = y
//    }
//    func moveByX(deltaX: Double, y deltaY: Double) {
//        self = Point(x: x + deltaX, y: y + deltaY)
//    }
//}
//
//var somePoint = Point(x: 1.0, y: 1.0)
//somePoint.moveByX(deltaX: 2.0, y: 3.0)
//print("The point is now at (\(somePoint.x), \(somePoint.y))")






enum TriStateSwitch : Int {
    case Off, Low, High
    mutating func next() {
        switch self {
        case .Off:
            self = .Low
        case .Low:
            self = .High
        case .High:
            self = .Off
        }
    }
}

var ovenLight = TriStateSwitch.Low
ovenLight.next()
ovenLight.rawValue
ovenLight.next()
ovenLight.rawValue



/*****************************************************************
* Type Methods (class)
*****************************************************************/
class SomeClass {
    static var temp = 0
    class func someTypeMethod() -> Int {
        // type method implementation goes here
        return 5
    }
}

SomeClass.someTypeMethod()


//enum Temperature {
//    case Celsius
//    case Fahrenheit
//    
//    static func toFahrenheit(_ Celsius: Double) -> Double {
//        return ((Celsius * 9.0 / 5.0) + 32.0)
//    }
//    static func toCelsius(_ Fahrenheit: Double) -> Double {
//        return ((Fahrenheit - 32) / 9 / 5)
//    }
//}
//
//Temperature.toFahrenheit(0)
//Temperature.toCelsius(32)



//struct Temperature {
//    static func toFahrenheit(_ Celsius: Double) -> Double {
//        return ((Celsius * 9.0 / 5.0) + 32.0)
//    }
//    static func toCelsius(_ Fahrenheit: Double) -> Double {
//        return ((Fahrenheit - 32) / 9 / 5)
//    }
//}
//
//Temperature.toFahrenheit(0)
//Temperature.toCelsius(32)



//class Temperature {
//    class func toFahrenheit(_ Celsius: Double) -> Double {
//        return ((Celsius * 9.0 / 5.0) + 32.0)
//    }
//    class func toCelsius(_ Fahrenheit: Double) -> Double {
//        return ((Fahrenheit - 32) / 9 / 5)
//    }
//}
//
//Temperature.toFahrenheit(0)
//Temperature.toCelsius(32)











