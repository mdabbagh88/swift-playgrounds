// Playground - noun: a place where people can play

import UIKit


/*****************************************************************
* Functions are actually a special case of closures: blocks of code that can be called later.
*
*
*
*
*****************************************************************/


func test() -> Int {
    return 5
}
test()


func greet1(name: String, day: String) -> String {
//    name = "aa"
    return "Hello \(name), today is \(day)."
}

greet1(name: "Ali", day: "Tuesday")
greet1(name: "Ahmed", day: "Satardy")



func greet2(name: String, lunch day: String) -> String {
    return "Hello \(name), today is \(day)."
}

greet2(name: "Mohammed", lunch: "Sunday")




func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(numbers: 42, 597, 12, 5)



/*****************************************
* 1. Nested Functions
*****************************************/
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
//    var t = add
//    t()
    return y
}
returnFifteen()


/*****************************************
* 1. Return Function
*****************************************/
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
makeIncrementer()(10)


/*****************************************
* 1. Function as an argument
*****************************************/
func hasAnyMatches(list: [Int], condition: ((Int) -> Bool)) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 17, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)





/*****************************************************************
* 1. Function/Closure without a name
*****************************************************************/
numbers = [20, 19, 7, 12]

var mappedNumbers1 = numbers.map({
    (number: Int) -> Int in
    let result = number * 2
    return result
})
print(mappedNumbers1)


let mappedNumbers2 = numbers.map({ number in 3 * number })
print(mappedNumbers2)


let mappedNumbers3 = numbers.filter { (num: Int) -> Bool in
    return num > 10
}
numbers



/*****************************************************************
 * Forcing an external parameter name
 *****************************************************************/
func greet3(anotherName name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet3(anotherName: "Mohammed", day: "Sunday")


/*****************************************************************
 * Forcing no external parameter names
 *****************************************************************/
func greet4(_ name: String, _ day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet4("Mohammed", "Sunday")









