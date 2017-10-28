//: Playground - noun: a place where people can play

import UIKit


struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")
// prints "six times three is 18"

threeTimesTable[6]

class TestClass {
    var propert1 = 1
    var propert2 = "str"
    subscript(index: Int) -> String {
        if index == 0 {
            return "propert1"
        }
        if index == 1 {
            return "propert2"
        }
        return "UNKOWN"
    }
    
    subscript(index: String) -> String {
        if index == "0" {
            return "propert1"
        }
        if index == "1" {
            return "propert2"
        }
        return "UNKOWN"
    }
}

var obj = TestClass()
obj[0]
obj["1"]

/*****************************************************************
* Dictionary
*****************************************************************/
var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["ant"]
numberOfLegs["bird"] = 2


class Result {

    var objects = Array<String>()
    
    subscript(key: Int) -> String {
        // logic code
        return objects[key]
    }

}




/*****************************************************************
* Array
*****************************************************************/
var arr = ["my", "name", "is", "-" ]
arr[3]
arr[3] = "mohammed"
arr


























