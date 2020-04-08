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

//Force unwrapping, the '!' is used to access the value.
var name: String?
name = "Jon"
//!= means not equal to
if name != nil {
    let newString = String ("Hello " + name!)
    print (newString)
}

//better method than force unwrapping
//Optional binding
var myOptional: String?
myOptional = "Jon"
if var myOptional = myOptional {
myOptional = "test"
print("Inside: \(myOptional)")
}
print("Outside: \(myOptional)")

//Optional Chaining
// allows us to call properties, methods & subscripts on an optional that might be nil. If any of the chained values return nil, the return value will be nil too.

//Enumerations
//special data types that allows us to group related types together.

enum Product {
case Book(Double, Int, Int)
case Puzzle(Double, Int)
}
var masterSwift = Product.Book(49.99, 2017, 310)
var worldPuzzle = Product.Puzzle(9.99, 200)

switch masterSwift {
case .Book(let price, let year, let pages):
print("Mastering Swift was published in \(year) for the price of \(price) and has \(pages) pages")
case .Puzzle(let price, let pieces):
print("Mastering Swift is a puzzle with \(pieces) and sells for \(price)")
}

switch worldPuzzle {
case .Book(let price, let year, let pages):
print("World Puzzle was published in \(year) for the price of \(price) and has \(pages) pages")
case .Puzzle(let price, let pieces):
print("World Puzzle is a puzzle with \(pieces) and sells for \(price)")
}

//Array where the type is 'Any'
var myArray: [Any] = [1,"Two"]
//Initialized an array of a certain size with all the elements of the array set to a predefined value.
var arrayFour = [Int](repeating: 3, count: 7)
//multidimensional array
var multiArrayTwo = [[Int]]([[1,2], [3,5]])
//stores 2 in value
let value = multiArrayTwo[0][1]
//printing first and last values
let first = multiArrayTwo.first
let last = multiArrayTwo.last
let arrLast1 = multiArrayTwo[1].last
print (first!)
print (last!)
print (arrLast1!)
//count property
var multiArrayOne = [[3,4],[5,6],[7,8]]
print(multiArrayOne[0].count)
print (multiArrayOne.isEmpty)
//add element to the end of a mutable array
multiArrayOne.append([3,7])
print (multiArrayOne)
//insert a new value into an array
multiArrayOne.insert([10,4], at:1)
print (multiArrayOne)
//replacing element in an array
multiArrayOne[0] = [5,9]
print (multiArrayOne)
//removing elements
multiArrayOne.removeLast()
multiArrayOne.remove(at:2)
//multiArrayOne.removeAll()

//merging arrays
var combined = multiArrayOne + multiArrayOne
print (combined)
//getting sub array from an array using subscript syntax
var subArray = combined[2...4]
print (subArray)
//excludes the last element
var halfOpenRange = combined[2..<4]
print (halfOpenRange)
var oneSided = combined[..<3]
print (oneSided)
//bulk changes to an array
var arrayOnee = [1,2,3,4,5]
arrayOnee[1...3] = [12,13,14,15]

//Algorithms
//Sort
//the $0 & $1 are closures??
//ascending
var arrayTwo = [9,3,6,2,8,5]
arrayTwo.sort(){ $0 < $1 }
//descending
var arrayThree = [9,3,6,2,8,5]
arrayThree.sort(){ $1 < $0 }

//Sorted
//does not change original array like in Sort
let sorted = arrayThree.sorted() {$0 < $1}
print (sorted)

//Filter
var arrayOne = [1,2,3,4,5,6,7,8,9]
let filtered = arrayOne.filter{$0 > 3 && $0 < 7}
//filtering strings
//checks if the if the string has 'o'
var city = ["Boston", "London", "Chicago", "Atlanta"]
let filteredd = city.filter{$0.range(of:"o") != nil}

//Map
//used to apply logic to elements in an array
var arrayFive = [10, 20, 30, 40]
let applied = arrayFive.map{ $0 / 10}

//forEach; to iterate over a sequence
var arraySix = [10, 20, 30, 40]
arraySix.forEach{ print($0) }

//for-in loop is better to iterate
var arraySeven = ["one", "two", "three"]
for item in arraySeven {
print(item)
}

//also shows index; enumerated method which returns tuple
var arrayEight = ["one", "two", "three"]
for (index,value) in arrayEight.enumerated() {
print("\(index) \(value)")
}

//Dictionaries
//unique id mapped to each element, not a index.
//can use custom obbjects as a key

//Initialising
//mutable
var countries = ["US":"UnitedStates","IN":"India","UK":"UnitedKingdom"]
//accessing dictionary values
var nameOfCountry = countries["US"]
//counting the key value pairs
var cnt = countries.count
//check if dictionary is empty
var empty = countries.isEmpty
//updating value of a key
countries["UK"] = "Great Britain"
var orig = countries.updateValue("Britain", forKey: "UK")
//adding a key value pair
countries["FR"] = "France"
var origg = countries.updateValue("Germany", forKey: "DE")
print (countries)
//removing a key value pair
countries["IN"] = nil
//returns the value of key prior to removing it.
var origgg = countries.removeValue (forKey:"UK")
//countries.removeAll()


//Set Type
//similar to array but unordered where each type should be unique.

//initalise
//mutable
var mySet = Set(["one", "two", "three"])
//inserting items
mySet.insert("One")
//check if inserted
var results = mySet.insert("One")
if results.inserted {
print("Success")
} else {
//this is printed
print("Failed")
}
//determine how many items in set
var count = mySet.count
//determine if set contains an item
var contain = mySet.contains("two")
//iterating over a set
for item in mySet {
print(item)
}
//removing item from set
var item = mySet.remove("two")
//removing all items from set
mySet.removeAll()

//set operations
var mySet1 = Set(["One", "Two", "Three", "abc"])
var mySet2 = Set(["abc","def","ghi", "One"])
//union method
var newSetUnion = mySet1.union(mySet2)























