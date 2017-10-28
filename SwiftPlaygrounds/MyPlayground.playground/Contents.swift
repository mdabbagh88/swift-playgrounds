// Playground - noun: a place where people can play

import Foundation
import UIKit

extension String {
    func stripWhiteSpace() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
}

var str1 = "a b c d e f"
var str2 = str1.stripWhiteSpace()


print(str1.capitalized.maximumLengthOfBytes(using: String.Encoding.utf8))


class A : NSObject {
    var myValue : NSString?
    
    func test() -> String {
        return "test"
    }
}


var a1 = A()
a1.myValue = "abcd"
print(a1)

//var a2 : A = A()
//a2 = nil
//a2.test()

struct B {
    var myValue : String?
}
var b1 = B(myValue: "")
b1.myValue = "abcd"
print(b1)

let IntValue = 5
String(IntValue)

let implicitDouble = 70.0
String(format:"%.11f", implicitDouble)
implicitDouble.description

var ud : Double = 5.0

var str = NSString(format: "Hello, world %.2f", 42.12312312313)
NSStringFromClass(str.classForCoder)

var mstr : NSString = "dd"
NSStringFromClass(mstr.classForCoder)

var num : NSNumber = 5
num.doubleValue



typealias MyDataType = NSString
var obj : MyDataType = ""
NSStringFromClass(obj.classForCoder)

var bnum : NSNumber = true
NSStringFromClass(bnum.classForCoder)
bnum.boolValue

var b : Bool = false


var fromString : NSString = String("aaa") as NSString
NSStringFromClass(fromString.classForCoder)

var fromString2 : NSString


























