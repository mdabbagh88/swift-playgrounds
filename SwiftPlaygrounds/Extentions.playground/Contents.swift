// Playground - noun: a place where people can play

import UIKit
import Foundation

/*****************************************************************
* Extensions in Swift can:
*   1. computed properties and computed type properties
*   2. Define instance methods and type methods
*   3. Provide new initializers
*   4. Define subscripts
*   5. Define and use new nested types
*   6. Make an existing type conform to a protocol
*****************************************************************/


/*****************************************************************
* Extensions in Swift can:
*   1. computed properties and computed type properties
*****************************************************************/
extension Int {
    var isEven : Bool {
        return (self % 2) == 0
    }
    
}

var num1 = 6
num1.isEven

5.isEven

func isEven(_ num: Int) -> Bool {
    return (num % 2) == 0
}

isEven(5)

/*****************************************************************
* Extensions in Swift can:
*   2. Define instance methods and type methods
*****************************************************************/
extension Int {
    func isOdd() -> Bool {
        return (self % 2) == 1
    }
}
var num2 = 6
num2.isOdd()

extension Int {
    mutating func square() {
        self = self * self
    }
}
var num3 = 6
num3.square()
num3.square()



/*****************************************************************
* Extensions in Swift can:
*   3. Provide new initializers
*****************************************************************/
extension Int {
    init (value: String) {
        self = Int(value)! // in swift 1.x: value.toInt()!
    }
}

var num4 = Int(value: "123456")



/*****************************************************************
* Extensions in Swift can:
*   4. Define subscripts
*****************************************************************/
extension Int {
    subscript(digitIndex: Int) -> Int {
        var newDigitIndex = digitIndex;
        var decimalBase = 1
        while newDigitIndex > 0 {
            decimalBase *= 10
            newDigitIndex -= 1
        }
        return (self / decimalBase) % 10
    }
}
746381295[0]
746381295[1]
746381295[2]
746381295[8]




/*****************************************************************
* Extensions in Swift can:
*   5. Define and use new nested types
*   6. Make an existing type conform to a protocol
*****************************************************************/
extension Int {
    enum Kind {
        case Negative, Zero, Positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
}

func printIntegerKinds(_ numbers: [Int]) {
    for number in numbers {
        number.kind
        switch number.kind {
        case .Negative:
            print("-")
        case .Zero:
            print("0")
        case .Positive:
            print("+")
        }
    }
    print("")
}

printIntegerKinds([3, 19, -27, 0, -6, 0, 7])

















