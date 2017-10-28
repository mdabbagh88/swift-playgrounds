// Playground - noun: a place where people can play

import UIKit

for i in 0...4 {
    i
}



for i in 0..<4 {
    i
}


// Strideable
for i in stride(from: 0, to: 10, by: 2) {
    i
}



// Note: Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order
let interestingNumbers = [
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Prime": [2, 3, 5, 7, 11, 13],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0

for (kind, numbers) in interestingNumbers {
    kind
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}





























