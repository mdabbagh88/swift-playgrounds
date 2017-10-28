// Playground - noun: a place where people can play

import UIKit
import Foundation


/*****************************************************************
* 1. Numbers Struct Data Types
*****************************************************************/
var IntValue : Int  = 70
NSStringFromClass(IntValue._bridgeToObjectiveC().classForCoder)

Int8.min
Int16.min
Int32.min
Int64.min
Int.min

Int8.max
Int16.max
Int32.max
Int64.max
Int.max

UInt8.min
UInt16.min
UInt32.min
UInt64.min
UInt.min

UInt8.max
UInt16.max
UInt32.max
UInt64.max
UInt.max

// Float represents a 32-bit floating-point number.
var FloatValue : Float  = 70
Float.nan
Float.infinity
NSStringFromClass(FloatValue._bridgeToObjectiveC().classForCoder)

// Double represents a 64-bit floating-point number.
var DoubleValue : Double  = 70
Double.nan
Double.infinity
NSStringFromClass(DoubleValue._bridgeToObjectiveC().classForCoder)


let decimalInteger = 17

let binaryInteger = 0b10001       // 17 in binary notation

let octalInteger = 0o21           // 17 in octal notation

let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

let decimalDouble = 12.1875

let exponentDouble = 1.21875e10

let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456



let oneMillion = 1_000_000             // Numeric literals

let justOverOneMillion = 1_000_000.000_000_1 // Numeric literals


/*****************************************************************
* 2. Numbers Class Data Types
*****************************************************************/
var NumValue1 : NSNumber = 0   // int
var NumValue2 : NSNumber = 70.0 // double


NumValue1.stringValue












/*****************************************************************
* 1. Strings Struct Data Types
*****************************************************************/
var StringValue : String  = "String value"
NSStringFromClass(StringValue._bridgeToObjectiveC().classForCoder)



/*****************************************************************
* 2. Strings Class Data Types
*****************************************************************/
var NSStringValue : NSString  = "NSString value"



var emptyString = ""               // empty string literal
if emptyString.isEmpty {
    print("Nothing to see here")
}


let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496


let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
//print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")







/*****************************************************************
* 1. Booleans Struct Data Types
*****************************************************************/
var BoolValue1 : Bool = true
var BoolValue2 : Bool = false

/**

var BoolValue3 : Bool = 1
var BoolValue4 : Bool = 0

**/

/*****************************************************************
* 2. Booleans Class Data Types
*****************************************************************/
var NumBoolValue1 : NSNumber = true
var NumBoolValue2 : NSNumber = false























































