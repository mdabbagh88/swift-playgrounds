// Playground - noun: a place where people can play

import UIKit
import Foundation



/*****************************************************************
* Basic Operators
* 1. Unary operators (-, +, --, ++, !)
* 2. Binary operators (x + y)
* 3. Ternary operators (conditional operator (a ? b : c)).
*****************************************************************/

/*****************************************************************
* Arithmetic Operators
* 1. Addition (+)
* 2. Subtraction (-)
* 3. Multiplication (*)
* 4. Division (/)
* 5. Remainder (%)
* 6. Increment (++)
* 7. Decrement (--)
*****************************************************************/

1 + 2
"hello, " + "world"
5 - 3
2 * 3
10.0 / 2.5
9 % 4

// Removed in swift 3
var i = 0
//++i
//--i



/*****************************************************************
* Comparison Operators
* 1. Equal to (a == b)
* 2. Not equal to (a != b)
* 3. Greater than (a > b)
* 4. Less than (a < b)
* 5. Greater than or equal to (a >= b)
* 6. Less than or equal to (a <= b)
* 7. Identical to (===)
* 8. Not identical to (!==)
*****************************************************************/
1 == 1   // true, because 1 is equal to 1
2 != 1   // true, because 2 is not equal to 1
2 > 1    // true, because 2 is greater than 1
1 < 2    // true, because 1 is less than 2
1 >= 1   // true, because 1 is greater than or equal to 1
2 <= 1   // false, because 2 is not less than or equal to 1

let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

var string1 : NSString = "string 1"
var string2 : NSString = "string 1"
if string1 === string2 {
    "same type & value"
} else {
    "not (same type & value)"
}



/*****************************************************************
* Ternary Operators
* 1. Nil Coalescing Operator
*****************************************************************/
var var1 : Int? = 10
var var2 = 5

//var result1 : Int?
//if var1 != nil {
//    result1 = var1
//} else {
//    result1 = var2
//}

var result1 = (var1 != nil ? var1! : var2)
result1

var result2 = var1 ?? var2
result2




/*****************************************************************
* Range Operators
* 1. Closed Range Operator
* 2. Half-Open Range Operator
*****************************************************************/
1...10
for index in 1...5 {
    index * index
}


1..<5
for index in 1..<5 {
    index
}



/*****************************************************************
* Logical Operators
* 1. Logical NOT (!a)
* 2. Logical AND (a && b) &
* 3. Logical OR (a || b) |
*****************************************************************/
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}


let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}


if enteredDoorCode || passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}


