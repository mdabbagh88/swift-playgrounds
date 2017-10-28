// Playground - noun: a place where people can play

import UIKit

enum Rank : Int {
    
    case Ace
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace1111"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
}

let ace = Rank.Eight

let aceRawValue = ace.rawValue

Rank.Two.rawValue
Rank.Ace.simpleDescription()


let str = "asdasda"






enum StringEnum : String {
    case Value1 = "Value1"
    case Value2 = "Value2"
    case Value3 = "Value3"

}

StringEnum.Value2

StringEnum.Value2.rawValue

let StringEnumValue = StringEnum.Value1

StringEnumValue.rawValue





enum BoolEnum : NSNumber {
    case False = 0
    case True = 1
}










