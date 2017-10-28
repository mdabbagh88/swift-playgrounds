// Playground - noun: a place where people can play

import UIKit


struct Rectangle {
    var width = 0
    var height = 0
    
    // explicit
//    init(width:Int, height:Int){
//        self.width = width
//        self.height = height
//    }
//
//    init(){
//    }
}


let rect1 = Rectangle(width:5, height:10)

// error
//let rect2 = Rectangle(height:10, width:5)

// error
//let rect3 = Rectangle(width:10)

// explicit -> e
var rect4 = Rectangle()

rect4.width = 100

rect4.height = 200












