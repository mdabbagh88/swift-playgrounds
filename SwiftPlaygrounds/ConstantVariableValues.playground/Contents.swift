// Playground - noun: a place where people can play

import UIKit
import Foundation


/***********************************************************
* Declare Variable Value
***********************************************************/
var VariableValue = "Hello, playground"

VariableValue = "new value"

print(VariableValue)


/***********************************************************
* Declare Constant Value
*
* 1. When a constant is declared at global scope, it must be initialized with a value.
***********************************************************/
let ConstantValue_1 = 5

//ConstantValue_1 = 10

print(ConstantValue_1)


/***********************************************************
* Declare Constant Value
***********************************************************/
//let ConstantValue_2
//
//ConstantValue_2 = 1
//
//print(ConstantValue_2)


/***********************************************************
* Declare Constant Value
*
* 2. The value of a constant doesn’t need to be known at compile time
***********************************************************/
// func will be explained later
func CalculateValue() -> Int {
    return 2
}

let ConstantValue_2 = CalculateValue()

print(ConstantValue_2)

























































