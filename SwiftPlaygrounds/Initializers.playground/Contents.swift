// Playground - noun: a place where people can play

import UIKit

/*****************************************
* Initializers
* 1. Default Initializers
*****************************************/

struct Size {
    var width = 0
    var height = 0
    
    // Designated
//    init(width:Int, height:Int){
//        self.width = width
//        self.height = height
//    }
    
    // Failable Initializers
    init?(width:Int, height:Int){
        if width < 10 { return nil }
        self.width = width
        self.height = height
    }
    
}

//class Size {
//    var width = 0
//    var height = 0
//}


//var size1 = Size()

//var size2 = Size(width:20, height:10)

//var size3 = Size(width:5, height:10)

/*****************************************
* Initializers
* 2. Designated Initializers (Initializer Delegation)
* 3. Convenience Initializers (Initializer Delegation)
*****************************************/
class Rectangel : NSObject {
    var width = 0
    var height = 0
    
    
    // Designated
//    override init(){
//        self.width = 10
//        self.height = 10
//    }
    
    // Designated
    init(width:Int, height:Int){
        self.width = width
        self.height = height
    }
    
    // Designated
    init(height:Int, width:Int){
        self.width = width
        self.height = height
    }
    
    // Designated
    init(height: Int) {
        self.width = height
        self.height = height
    }
    
    // Convenience
    convenience init(width:Int){
        self.init(width: width, height: 10) // Initializer Delegation
    }
    
    
}


//var rectangel1 = Rectangel()

var rectangel2 = Rectangel(width:5, height:10)

var rectangel3 = Rectangel(height:10)

var rectangel4 = Rectangel(height:10, width:5)
rectangel4.height

var rectangel5 = Rectangel(width:10)


class Document {
    
    var name: String?
    
    // Failable Initializers
    init?(name: String) {
        self.name = name
        if name.isEmpty { return nil }
    }
}

var doc1 = Document(name: "")


doc1?.name

/*****************************************
* Initializers
* 4. required Initializer
*****************************************/
// required modifier before the definition of a class initializer to indicate that every subclass of the class must implement that initializer
class ParentClass {
    
    required init() {
    }
    
}

class ChildClass : ParentClass {
    
    var name: String = "ChildClass"
    
    init(name: String) {
        self.name = name
    }

    required init() {
//        fatalError("init() has not been implemented")
    }

    
    
}

var child1 = ChildClass()

var child2 = ChildClass(name: "gggg")



