// Playground - noun: a place where people can play

import UIKit
import Foundation


//let array11 = []

let array1 = [1, 5]

let array2 : Array<Int> = Array()

let array3 = Array<Int>()

let array33 = [Int]()

let array4 : Array<Int> = [Int]()

let array5 : Array<Int> = Array<Int>()

// array5.append(6) // error will show cuz ts constant


// immutable: when 'let' keyword used
//   mutable: when 'var' keyword used
var array6 : Array<Int> = Array<Int>()
array6.append(10)
array6.remove(at: 0)
array6
NSStringFromClass(array6._bridgeToObjectiveC().classForCoder)


//Int[] values = new Int[] {1, 2, 3};
//int value[]

var array7 : NSMutableArray = NSMutableArray()
array7.add(99)
NSStringFromClass(array7.classForCoder)


/*
'let' keyword -> for "constant/Immutable" array, dictionary, variable, object..etc.
'var' keyword -> for "Mutable" array, dictionary, variable, object..etc.


WARNING: Immutable arrays are not entirely immutable! You can still change their contents, just not their overall length!


if you want to work with Array (Swift) as with NSArray, you can use a simple bridge function.
arr1._bridgeToObjectiveC().count
*/



















