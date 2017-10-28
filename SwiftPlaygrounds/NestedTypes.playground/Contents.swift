//: Playground - noun: a place where people can play

import UIKit

/*****************************************************************
* Enumerations are often created to support a specific class or structure’s functionality.
* It can be convenient to define utility classes.
* Types can be nested to as many levels as are required.
*****************************************************************/


// example 1
struct Frame {
    var orgin : Point
    var Size : Rectangle
    
    struct Point {
        var x = 0.0
        var y = 0.0
    }

    struct Rectangle {
        var width = 0.0
        var hiegth = 0.0
    }
}

var s = Frame(orgin: Frame.Point(), Size: Frame.Rectangle())



// example 2
class Message
{
    //New
    enum Status : Int
    {
        case Sent
        case Received
        case Read
    }
    //
    
    let sender: String
    let recipient: String
    
    let timeStamp: NSDate
    
    var status = Status.Sent  //Modified
    
    init(sender: String, recipient: String)
    {
        self.sender = sender
        self.recipient = recipient
        
        timeStamp = NSDate()
    }
    
    func basicInfo()->String
    {
        return "Time: \(timeStamp.description), Sender:  \(sender), Recipient:  \(sender)"
    }
    
    func printInfo()
    {
        print(basicInfo())
    }
    
    //New
    func statusColor() -> UIColor
    {
        switch status
        {
        case .Sent:
            return UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        case .Received:
            return UIColor(red: 0, green: 0, blue: 1, alpha: 1)
        case .Read:
            return UIColor(red: 0, green: 1, blue: 1, alpha: 1)
        }
    }
    //
}


var msg = Message(sender: "Ali", recipient: "mohammed")
msg.basicInfo()
msg.printInfo()
msg.statusColor()
msg.status.rawValue
msg.status = Message.Status.Read
msg.status.rawValue
msg.statusColor()


// TODO: create struct person holds personal info like:
//       name, gender, address info, contact info
























