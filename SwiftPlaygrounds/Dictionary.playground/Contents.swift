// Playground - noun: a place where people can play

//import CoreFoundation
//import CoreGraphics
//import Darwin
//import Foundation
import UIKit


let dictionary1 = ["key": 5]

let dictionary2 : Dictionary<String, Int> = [:]

let dictionary3 : Dictionary<String, Int> = Dictionary()

let dictionary4 = [String: Int]()

let dictionary5 : Dictionary<String, Int> = [String: Int]()

let dictionary6 : Dictionary<String, Int> = Dictionary<String, Int>()


// immutable: when 'let' keyword used
//   mutable: when 'var' keyword used

var dictionary7 : Dictionary<String, Int> = Dictionary<String, Int>()
NSStringFromClass(dictionary7._bridgeToObjectiveC().classForCoder)

dictionary7

dictionary7.updateValue(1, forKey: "key")
dictionary7.updateValue(10, forKey: "key1")
//dictionary7.updateValue(20, forKey: "key1")

dictionary7

dictionary7["key"] = 2
dictionary7["key"]

dictionary7._bridgeToObjectiveC().value(forKey: "key")

dictionary7

dictionary7.removeValue(forKey: "key")

dictionary7


for (key, value) in dictionary7 {
    key
    value
}


// Note: Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order

