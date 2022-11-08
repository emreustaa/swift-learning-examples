import UIKit

// This is a comment

print("Hello World!")


/*
 This a multiline comment
 */

print("Hello \(2+3) World")


var a = 5
var b = 8

print(a)
print(b)

print("\n")

var temp = a
a = b
b = temp

print(a)
print(b)

var names =  ["Angela","Jack","Philip"]

var numbers = [45,73,195,53]

var computedNumber = [(numbers[0]*numbers[1]),(numbers[1]*numbers[2]),(numbers[2] * numbers[3]),(numbers[3] * numbers[0])]
print(computedNumber)

var isEnabled : Bool = false
print("\(isEnabled)")

//var randomNumber = Int.random(in: 0...4)
//var randomNumber = Int.random(in: 0..<4)
//var randomNumber = Float.random(in: 0..<4)
var randomNumber = Bool.random()
print(randomNumber)
