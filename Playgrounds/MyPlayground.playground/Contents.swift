import UIKit
////
////// This is a comment
////
////print("Hello World!")
////
////
/////*
//// This a multiline comment
//// */
////
////print("Hello \(2+3) World")
////
////
////var a = 5
////var b = 8
////
////print(a)
////print(b)
////
////print("\n")
////
////var temp = a
////a = b
////b = temp
////
////print(a)
////print(b)
////
////var names =  ["Angela","Jack","Philip"]
////
////var numbers = [45,73,195,53]
////
////var computedNumber = [(numbers[0]*numbers[1]),(numbers[1]*numbers[2]),(numbers[2] * numbers[3]),(numbers[3] * numbers[0])]
////print(computedNumber)
////
////var isEnabled : Bool = false
////print("\(isEnabled)")
////
//////var randomNumber = Int.random(in: 0...4)
//////var randomNumber = Int.random(in: 0..<4)
//////var randomNumber = Float.random(in: 0..<4)
////var randomNumber = Bool.random()
////print(randomNumber)
////
////
////var playerUsername : String? = nil
////
////playerUsername = "Emre"
////
////var unwrappedUsername = playerUsername!
////
////playerUsername = nil
////
////if playerUsername != nil {
////    print(playerUsername!)
////}
////
////
//
//
//struct Town {
//
//    let name : String
//    var citizens : [String]
//    var resources : [String:Int]
//
//    init(name: String, citizens: [String], resources : [String:Int]) {
//        self.name = name
//        self.citizens = citizens
//        self.resources = resources
//    }
//
//
//    func fortify(){
//        print("Defences increased!")
//    }
//}
//
//var myTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconuts": 100])
////var myTown = Town()
//myTown.citizens.append("Wilson")
//print(myTown.citizens)
//print("\(myTown.name) has \(myTown.resources["Coconuts"]!) coconuts.")
////
////myTown.citizens.append("Keanu Reeves")
////print(myTown.citizens.count)
////
////myTown.fortify()
//
//var ghostTown = Town(name: "Ghosty McGhostface", citizens: [], resources: ["Tunbleweed" : 1])
//print(ghostTown.name)
//print(ghostTown.citizens)
//print("\(ghostTown.name) has \(ghostTown.resources["Tunbleweed"]!) tunbleweed.")
//ghostTown.fortify()


var myDouble = 3.14159

extension Double {
    
    func round(to places:Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}
//let myRoundedDouble = String(format: "%.1f", myDouble)

myDouble.round(to: 1)

var a = 234.234234
a.round(3)
