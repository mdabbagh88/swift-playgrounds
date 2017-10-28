//: Playground - noun: a place where people can play

import UIKit

/*****************************************************************
* Access control: restricts access to parts of your code from code 
*    in other source files and modules. This feature enables you
*    to hide the implementation details of your code, and to
*    specify a preferred interface through which that code
*    can be accessed and used.
*
*   Access Levels: Public, Internal, Private, filePrivate
*                  the default access level is internal
*****************************************************************/


//public class SomePublicClass {}
//internal class SomeInternalClass {}
//private class SomePrivateClass {}
//
//public var somePublicVariable = 0
//internal let someInternalConstant = 0
//private func somePrivateFunction() {}








public class SomePublicClass {          // explicitly public class
    var someInternalProperty = 0         // implicitly internal class member
    public var somePublicProperty = 0    // explicitly public class member
    private var somePrivateProperty = 0  // explicitly private class member
    fileprivate var someFilePrivateProperty = 0 // explicitly private class, except it is accissable from current module
}

class SomeInternalClass {               // implicitly internal class
    var someInternalProperty = 0         // implicitly internal class member
    private func somePrivateMethod() {}  // explicitly private class member
}

private class SomePrivateClass {        // explicitly private class
    var somePrivateProperty = 0          // implicitly private class member
    func somePrivateMethod() {}          // implicitly private class member
}

fileprivate class SomeFilePrivateClass {        // explicitly private class
    var somePrivateProperty = 0          // implicitly private class member
    func somePrivateMethod() {}          // implicitly private class member
}



5



var c = SomePublicClass()
c.someInternalProperty
c.somePublicProperty
//c.somePrivateProperty  // compile error
c.someFilePrivateProperty




/*****************************************************************
* Nested Types
*    1. Nested types defined within a private type have an automatic access level of private
*    2. Nested types defined within a public type or an internal type have an automatic access level of internal
*****************************************************************/



/*****************************************************************
* Subclassing
*   A subclass cannot have a higher access level than its superclass—for example,
*   you cannot write a public subclass of an internal superclass.
*****************************************************************/
//public class A {
//    private func someMethod() {}
//}
//
//internal class B : A {
//    override internal func someMethod() {
//        super.someMethod()
//    }
//}



//internal class A {
//    private func someMethod() {}
//}
//
//public class B : A {
//    override internal func someMethod() {
//        super.someMethod()
//    }
//}





/*****************************************************************
* Constants, Variables, Properties, and Subscripts.
*****************************************************************/
// Getters and Setters
public struct TrackedString {
    public private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits += 1
        }
    }
}

var stringToEdit = TrackedString()
//stringToEdit.numberOfEdits = 5
stringToEdit.value = "This string will be tracked."
stringToEdit.value += " This edit will increment numberOfEdits."
stringToEdit.value += " So will this one."
print("The number of edits is \(stringToEdit.numberOfEdits)")

























