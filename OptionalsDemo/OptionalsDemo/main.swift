

struct MyOptional {
    
    var property = 123
    
    func method(){
        print("I am the struct's method")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

print(myOptional!.property)

myOptional?.method()

//if myOptional != nil {
//    let text: String = myOptional!
//}else{
//    print("myOptional was found to be nil")
//}
//
//
//if let safeOptional = myOptional {
//    let text: String = safeOptional
//    let text2: String = safeOptional
//    print(safeOptional)
//}else{
//    print("myOptional was found to be nil")
//}


//let text : String = myOptional ?? "Empty!"
//print(text)
