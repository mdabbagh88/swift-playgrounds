// Playground - noun: a place where people can play

import UIKit
import Foundation

var temp: Optional<String>


var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var optionalName2: Optional<String> = "John Appleseed"

var greeting = "Hello!"

//optionalName = nil

if let name = optionalName {
    greeting = "Hello, \(name)"
}

//var optionalName3: NSString = nil

