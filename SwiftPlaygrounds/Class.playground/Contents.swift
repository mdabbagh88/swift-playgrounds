// Playground - noun: a place where people can play

import UIKit
import Foundation

// Note: Any class that does not inherit from another class is known as a base class.
class Shape {
    
    // property
    var numberOfSides = 0
    
    // method
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}


// create object
var shape = Shape()

// set a value to property
shape.numberOfSides = 7

// call a method
var shapeDescription = shape.simpleDescription()


//NSStringFromClass(shape.classForCoder)


shape = Shape()
shape.numberOfSides








