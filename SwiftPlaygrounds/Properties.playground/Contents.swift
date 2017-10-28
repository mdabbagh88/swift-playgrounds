// Playground - noun: a place where people can play

import UIKit

/*****************************************************************
* 1. Stored Properties (struct + enum + class)
*****************************************************************/
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6




/*****************************************************************
* 2. Stored Properties of Constant Structure Instances
*****************************************************************/
struct StructTest {
    var firstValue: Int = 0
    let length: Int = 4
}
let structTest1 = StructTest()
//structTest1.firstValue = 6 // this will report an error, even though firstValue is a variable property


class ClassTest {
    var firstValue: Int = 0
    let length: Int = 4
}
let classTest1 = ClassTest()
classTest1.firstValue = 6



/*****************************************************************
* 3. Lazy Stored Properties (always declare a lazy property as a variable 'var')
*   'lazy': means created when the  property is first accessed.
*****************************************************************/
func getValue() -> Int { return 10 }
class LazyClass {
    lazy var firstValue: Int = getValue()
}
let lazyClass1 = LazyClass()
lazyClass1.firstValue
lazyClass1.firstValue = 6







/*****************************************************************
* 4. Computed Properties (Getter + Setter)
* Setter: new value named 'newCenter' default name 'newValue'
*****************************************************************/
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))

let initialSquareCenter = square.center
initialSquareCenter.x
initialSquareCenter.y
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")





/*****************************************************************
* 5. Read-Only Computed Properties
*****************************************************************/
struct ReadOnlyRect {
    var width = 0.0, height = 0.0
    var area: Double {
        get {
            return width * height
        }
    }
}
let readOnlyRect = ReadOnlyRect(width: 4.0, height: 5.0)
print("the area of readOnlyRect is \(readOnlyRect.area)")




/*****************************************************************
* 5. Property Observers
*   'willSet' is called just before the value is stored. (newValue)
*   'didSet' is called immediately after the new value is stored. (oldValue)
*****************************************************************/
class StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps





/*****************************************************************
* 6. Global and Local Variables
*   Global constants and variables are always computed lazily
*****************************************************************/


/*****************************************************************
* 7. Type Properties
*   Global constants and variables are always computed lazily
*****************************************************************/
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}
SomeStructure.storedTypeProperty

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}

class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}


SomeClass.computedTypeProperty
SomeClass.overrideableComputedTypeProperty




















