//: Playground - noun: a place where people can play

import UIKit


/*****************************************************************
* 1. SIMPLE FUNCTION
*****************************************************************/
func sum(_ a:Int, _ b:Int) -> Int
{
    return a+b;
}

var out = sum(1, 2)




/*****************************************************************
* 2. PASSING DEFAULT PARAMETERS TO FUNCTIONS
*****************************************************************/
func join(_ str1:String, _ str2:String, _ with:String = ",") -> String
{
    return str1 + with + str2;
}

var out1 = join("Hello", "World", "-")
var out2 = join("Hello", "World")



/*****************************************************************
* 3. PASSING VARIABLE LIST IN THE ARGUMENTS
*****************************************************************/
func printNumbers(_ numbers: Int...)
{
    for number in numbers
    {
        print(number);
    }
}

printNumbers(1, 2)
printNumbers(1, 2, 3, 4, 5, 6)



/*****************************************************************
* 4. CONSTANT AND VARIABLE PARAMETERS
*   By Default, all the parameters are constants.
*   Trying to the change the value of parameter results in a compile-time error.
*****************************************************************/
func testFun1(_ str1:String)
{
//    str1 = "Ravi" //this gives compilation error.
}

func testFun2(_ str1: inout String)
{
    str1 = "Ravi" //updated str1 value.
}

var val1 = "test"
testFun2(&val1)
val1

// Note: Changes made in the body are not visible outside the body. i.e.(Pass by value).




/*****************************************************************
* 5. IN-OUT PARAMETERS (PASS BY REFERENCE)
*   If you want to modify a variable inside the body and you want
*   the changes persist out side the body, define the parameter
*****************************************************************/

func swapNumbers(_ x: inout Int, _ y: inout Int)
{
    let temp = x;
    x = y;
    y = temp;
}

var x: Int = 1
var y: Int = 2
swapNumbers(&x, &y)

print("x : \(x) y: \(y)") // x,y values are swapped






















