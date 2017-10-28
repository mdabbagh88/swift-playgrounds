// Playground - noun: a place where people can play

import UIKit
import Foundation

protocol ExampleProtocol {
    
    var simpleDescription: String { get }
    
    mutating func adjust()
    
}

class SimpleClass: ExampleProtocol {
    
    var simpleDescription: String = "A very simple class."

    var anotherProperty: Int = 69105
    
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
    
}

var a = SimpleClass()

a.adjust()

let aDescription = a.simpleDescription

a.simpleDescription = "test"








// 'mutating' keyword in the declaration of SimpleStructure to mark a method that modifies the structure.
// The declaration of SimpleClass doesn’t need any of its methods marked as mutating because methods on a class can always modify the class.
struct SimpleStructure: ExampleProtocol {
    
    var simpleDescription: String = "A simple structure"
    
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
    
}

var b = SimpleStructure()

b.adjust()

let bDescription = b.simpleDescription















