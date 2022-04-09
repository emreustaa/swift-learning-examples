import UIKit

var greeting = "Hello, playground"

func myFunction(){
    print("my function")
}

myFunction()

// Input & Output & Return

func sumFunc(x :Int, y: Int) -> Int {
    return x+y
}

let myFunctionVariable = sumFunc(x: 10, y: 20)
print(myFunctionVariable)

func logicFunction(a: Int, b:Int) -> Bool {
    if a > b {return true} else {return false}
}

logicFunction(a: -10, b: 0)
