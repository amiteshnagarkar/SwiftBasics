import UIKit


//printing stuff
var name1 = "Jon"
var name2 = "Kim"
var name3 = "Kailey"
var name4 = "Kara"

print(name1, name2, name3, name4)
print(name1, name2, name3, name4, separator:", ")
print(name1, name2, name3, name4, separator:", ", terminator:"")
var line = ""
print(name1, name2, name3, name4, separator:", ", terminator:"", to:&line)

//constant
let speedoflight = 300000, amitesh = 21
//variable
var currentspeed = 50

//Swift is a type safe language; required to define the types of the values we are going to store in a variable.

var x = 3.14 // Double type
var y = "Hello" // String type
var z = true // Boolean type
var q: Float = 3.14 //explictly defining a variable // 32 bit
var f: Double = 3.14 //64 bit

print("UInt8 max \(UInt8.max)")

//the complier ignores the underscore
let speedOfLightKmSec = 300_000

var intVar = 32
var floatVar = Float(intVar)

//multiline string
var multiLine = """
This is a multiline string literal. This shows how we can create a string
over multiple lines.
"""

//print each individual string using indicies and indexes.
var stringOne = "Hello"
for index in stringOne.indices {
print(stringOne[index])
}

//does the same as above; using map methdod to retrive each character.
stringOne.map {
print($0)
}

//concatenation
var samplex = "Hello"
let sampley = "HI"
var samplez = " World"
var ami: () = samplex += samplez
print (ami)

//
var stringTwo = "hello swift amitesh"
print("Lowercase String: " + stringTwo.lowercased())
print("Uppercase String: " + stringTwo.uppercased())

//prefix at the start
stringTwo.hasPrefix("hello")

//suffix at the end of the string
if stringTwo.hasSuffix("swift") {
    print ("true") }
else {
    print ("false")
}

//replacing strings
var stringFire = "one,to,three,four"
print(stringFire.replacingOccurrences(of: "to", with: "two"))

//substrings
//this code counts the individual characters in the path string below.
var path = "/one/two/three/four"
//Create start and end indexes
//this takes the /one
let startIndex = path.index(path.startIndex, offsetBy: 4)
let endIndex = path.index(path.startIndex, offsetBy: 14)
let sPath = path[startIndex ..< endIndex] //returns the "/two/three"
//convert the substring to a string
//let newStr = String(sPath)
let newStr = String(path[...startIndex])
let newStrr = String(path[endIndex...])
path.last
path.first
var length = path.count
print (length)

//optionals
//Optional variables were added to the Swift language as a safety feature.
//provide a compile-time check of our variables to verify that they contain valid values.
var sevenUp : String?
var sevenUpp : String
sevenUp = nil
//sevenUpp = nil








