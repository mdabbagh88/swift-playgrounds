//: Playground - noun: a place where people can play

import UIKit
import Foundation

/*****************************************************************
* 4. CONSTANT AND VARIABLE PARAMETERS
*   By Default, all the parameters are constants.
*   Trying to the change the value of parameter results in a compile-time error.
*****************************************************************/
struct Error {
    typealias ErrorInfoDictionary = Dictionary<String, Any>
    
    let code: Int
    let domain: String
    let userInfo: ErrorInfoDictionary
    
    init(code: Int, domain: String, userInfo: ErrorInfoDictionary?) {
        self.code = code
        self.domain = domain
        if let info = userInfo {
            self.userInfo = info
        }
        else {
            self.userInfo = [String:Any]()
        }
    }
}

enum Failable {
    case Success
    case Failure(Error)
    
    init() {
        self = .Success
    }
    
    init(_ error: Error) {
        self = .Failure(error)
    }
    
    var failed: Bool {
        switch self {
        case .Failure(_):
            return true
            
        default:
            return false
        }
    }
    
    var error: Error? {
        switch self {
        case .Failure(let error):
            return error
            
        default:
            return nil
        }
    }
}

//enum FailableOf<T> {
//    case Success(FailableValueWrapper<T>)
//    case Failure(Error)
//
//    init(_ value: T) {
//        self = .Success(FailableValueWrapper(value))
//    }
//
//    init(_ error: Error) {
//        self = .Failure(error)
//    }
//
//    var failed: Bool { /* same as above … */ }
//    var error: Error? { /* same as above … */ }
//
//    var value: T? {
//        switch self {
//        case .Success(let wrapper):
//            return wrapper.value
//
//        default:
//            return nil
//        }
//    }
//}

//func failWhenNilAndReturn(name: String?) -> FailableOf<T> {
//    // not using .Success because of the
//    // FailableValueWrapper workaround.
//    if let n = name { return FailabeOf<T>(n) }
//    else { return .Failure(Error(code: 2,
//        domain: "err",
//        userInfo: nil)) }
//}

//let result = failWhenNilAndReturn("David")
//if result.failed { /* handle the error */ }
//print("name: \(result.value!)")
































































