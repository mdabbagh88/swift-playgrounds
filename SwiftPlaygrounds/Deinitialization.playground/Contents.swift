// Playground - noun: a place where people can play

import UIKit


struct Bank {
    
    static var coinsInBank = 10_000
    
    static func vendCoins(_ numberOfCoinsToVend: Int) -> Int {
        var numberOfCoinsToVend = numberOfCoinsToVend
        numberOfCoinsToVend = min(numberOfCoinsToVend, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    
    static func receiveCoins(_ coins: Int) {
        coinsInBank += coins
    }
    
}

var num = 10

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.vendCoins(coins)
    }
    func winCoins(_ coins: Int) {
        coinsInPurse += Bank.vendCoins(coins)
    }
    deinit {
        Bank.receiveCoins(coinsInPurse)
        num = 20
    }
}




var playerOne: Player? = Player(coins: 100)

print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
// prints "A new player has joined the game with 100 coins"

print("There are now \(Bank.coinsInBank) coins left in the bank")
// prints "There are now 9900 coins left in the bank"



playerOne!.winCoins(2_000)
print("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")
// prints "PlayerOne won 2000 coins & now has 2100 coins"

print("The bank now only has \(Bank.coinsInBank) coins left")
// prints "The bank now only has 7900 coins left"


num
playerOne = nil
num

print("PlayerOne has left the game")
// prints "PlayerOne has left the game"

print("The bank now has \(Bank.coinsInBank) coins")
// prints "The bank now has 10000 coins"









class ClassA {
    static var counter = 0
    
    init() {
        ClassA.counter += 1
    }
    deinit {
        ClassA.counter -= 1
    }
}

ClassA.counter
var obj1 : ClassA? = ClassA()
var obj2 = ClassA()
var obj3 = ClassA()
ClassA.counter

obj1 = nil
ClassA.counter















