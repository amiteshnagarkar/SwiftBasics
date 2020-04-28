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
//the 4 operations add functionality which is not available in arrays.
//faster lookup speeds

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
//takes unique values from both sets to make another.
var newSetUnion = mySet1.union(mySet2)
//or
mySet1.formUnion(mySet2)
//subtracting methods
//creates a set with values from first set but not in seconds set
var newSetSubtract = mySet1.subtracting(mySet2)
//or
mySet1.subtract(mySet2)
//intersection method
//new set with values that are common between the two sets.
var newSetIntersect = mySet1.intersection(mySet2)
//or
mySet1.formIntersection(mySet2)
//symmetric difference methods
//creates a new set with values that are in either set but not in both.
var newSetExclusiveOr = mySet1.symmetricDifference(mySet2)
//or
mySet1.formSymmetricDifference(mySet2)


//Tuples
//groups multiple values into a single compound
//values do not have to be the same type
//good for storing data where methods arent needed

//defining a tuple
var team = ("Boston", "Red Sox", 97, 65, 59.9)
var cityy = team.0
var namee = team.1
var wins = team.2
var loses = team.3

//Conditional Statements

//if
let teamOneScore = 7
let teamTwoScore = 6
if teamOneScore>teamTwoScore {
print("Team One Won")
}

//if else
let team3Score = 7
let team4Score = 6
if team3Score>team4Score {
print("Team 3 Won")
} else if team4Score>team3Score {
print("Team 4 Won")
} else {
print("We have a tie")
}

//guard statement
//This statement focuses on performing a function if a condition is false; this allows us to trap errors and perform the error conditions early in our functions.
func guardFunction(str: String?) {
guard let goodStr = str else {
print("Input was nil")
return
}
print("Input was \(goodStr)")
}

//for...in loop
//array
var countriess = ["USA","UK", "IN"]
for item in countriess {
print(item)
}
//dictionary
var dic = ["USA": "United States", "UK": "United Kingdom","IN":"India"]
for (abbr, name) in dic {
print("\(abbr) -- \(name)")
}

//while loop
//when no of iterations are unknown
//used to run a loop zero or more times
//checks conditional statements prior
var ran = 0
while ran < 7 {
ran = Int(arc4random_uniform(10))
}

//repeat-while loop
var rann: Int
repeat {
rann = Int(arc4random_uniform(10))
} while rann < 4

//switch statements
//The switch statement takes a value, compares it to several possible matches, and executes the appropriate block of code based on the first successful match.
var speed = 300000000
switch speed {
case 300000000:
print("Speed of light")
case 340:
print("Speed of sound")
default:
print("Unknown speed")
}
//range
var grade = 93
switch grade {
case 90...100:
print("Grade is an A")
case 80...89:
print("Grade is a B")
case 70...79: break
default:
print("Unknown Grade")
}

//where statement in for-in loop
for number in 1...30 where number % 2 == 0 {
print(number)
}
//for-case let statement
var worldSeriesWinners = [
("Red Sox", 2004),
("White Sox", 2005),
("Cardinals", 2006),
("Red Sox", 2007),
("Phillies", 2008),
("Yankees", 2009),
("Giants", 2010),
("Cardinals", 2011),
("Giants", 2012),
("Red Sox", 2013),
("Giants", 2014),
("Royals", 2015)
]
for case let ("Red Sox", year) in worldSeriesWinners {
print(year)
}

//filtering nil values in an array
let myNumbers: [Int?] = [1, 2, nil, 4, 5, nil, 6]
for case let .some(num) in myNumbers {
print(num)
}

//if case
enum Identifier {
case Name(String)
case Number(Int)
case NoIdentifier
}
var playerIdentifier = Identifier.Number(2)
if case let .Number(num) = playerIdentifier {
print("Player's number is \(num)")
}

//Control Transfer statements
//to transfer control to another part of the code

//contiunue statement
for i in 1...10 {
if i % 2 == 0 {
continue
}
print("\(i) is odd")
}

//break statement
for i in 1...10 {
if i % 2 == 0 {
break
}
print("\(i) is odd")
}

//fall through statements
//to force to go down...
var personName = "Jon"
var sport = "Baseball"
switch sport {
case "Baseball":
print("\(personName) plays Baseball")
fallthrough
case "Basketball":
print("\(personName) plays Basketball")
fallthrough
default:
print("Unknown sport")
}

//Functions
//block of code that performs a specific task
//resuable
//has parameters/arguments

//single parameter function
func sayHello2(name: String) ->String {
let retString = "Hello " + name
//print(retString)
return retString
}
//calling a single parameterfunction
sayHello2(name: "Amitesh")
//inputting returned value in variable
var message = sayHello2(name:"Jon")
//underscore tells compiler u are aware of the return value but do not want to use it.
_ = sayHello2(name:"Jon")
//using discardresult also tells the compiler ^
@discardableResult func sayHello3(name: String) ->String {
let rexString = "Hello " + name
return rexString
}


//multiparameter function
func sayHello(name: String, greeting: String) {
print("\(greeting) \(name)")
}
//calling a multiparameter function
sayHello(name:"Jon", greeting:"Bonjour")

//defining a parameters default values.
func sayHello3(name: String, greeting: String = "Bonjour") {
print("\(greeting) \(name)")
}

//returning multiple values from a function
//tuple is used so data can be any type
func getTeam() -> (team:String, wins:Int, percent:Double) {
let retTuple = ("Red Sox", 99, 0.611)
return retTuple
}
var t = getTeam()
print("\(t.team) had \(t.wins) wins")

//returning optional values
func getTeam2(id: Int) -> (team:String, wins:Int, percent:Double)? {
if id == 1 {
return ("Red Sox", 99, 0.611)
}
return nil
}

//Adding external parameeter names
//makes code easier to read...
func winPercentage(baseballTeam team: String, withWins wins: Int, andLoses losses: Int) -> Double {
return Double(wins) / Double(wins + losses)
}
//calling
var per = winPercentage(baseballTeam:"Red Sox", withWins:99, andLoses:63)

//variadic parameters
//accepts 0 or more values of a specified type
func sayHello4(greeting: String, names: String...) {
for name in names {
print("\(greeting) \(name)")
}
}
//calling
sayHello4(greeting:"Hello", names: "Jon","Kim")


//inout parameters
//If we want to change the value of a parameter and we want those changes to persist once the function ends
//cannot have default values or be variadic
func reverse(first: inout String, second: inout String) {
let tmp = first
first = second
second = tmp
}
//calling
var one = "One"
var two = "Two"
//the &(ampersand) indicates the function can modify the value of the variable.
reverse(first: &one, second: &two)
print("one: \(one) two: \(two)")



//PUTTING ALL TOGETHER

//function used for function below
func validOctet(octet: String) ->Bool {
guard let num = Int(String(octet)),(num >= 0) && (num < 256) else {
return false
    }
    return true
}

//test to see if a string value contains a valid IPv4 address.
func isValidIP(ipAddr: String?) ->Bool {
guard let ipAddr = ipAddr else {
return false
}
//let octets = ipAddr.characters.split { $0 == "."}.map{String($0)}
let octets = ipAddr.components(separatedBy: ".")
guard octets.count == 4 else {
return false
}
for octet in octets {
guard validOctet(octet: octet) else {
return false
}
}
return true
}

//class
//reference type
//different parts of your program can share and modify your object
//follows inheritance; classes can be derived from a parent/superclass.
class MyClass {
//code
}

//struct
//value type
//what gets passes around is a copy of the structure
struct MyStruct {
// code
}





//stored properties
//STRUCT
struct EmployeeStruct {
var firstName = ""
var lastName = ""
//var salaryYear = 0.0

//computed property
//writeable
var salaryWeek: Double {
    get{
        return self.salaryYear/52
    }
    set (newSalaryWeek){
        self.salaryYear = newSalaryWeek*52
    }
        }
    

var salaryYear: Double = 0.0 {
    willSet(newSalary) {
        print("About to set salaryYear to \(newSalary)")
    }
    didSet {
        if salaryWeek>oldValue {
            print("\(firstName) got a raise.") }
            else {
                print("\(firstName) did not get a raise.")
            }
        }
    }
    
    func getFullName() -> String {
    return firstName + " " + lastName
    }
    
    //allows us to modify this property in this struct by adding mutating keyword
    mutating func giveRaise(amount: Double) {
    self.salaryYear += amount
    }
    
    //initialiser
    init() {
    self.firstName = ""
    self.lastName = ""
    self.salaryYear = 0.0
    }
    init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
    self.salaryYear = 0.0
    }
    init(firstName: String, lastName: String, salaryYear: Double) {
    self.firstName = firstName
    self.lastName = lastName
    self.salaryYear = salaryYear
    }

    
}




//CLASS
public class EmployeeClass {
//stored property
var firstName = ""
var lastName = ""
//var salaryYear = 0.0

//computed property
//calculate a value
//writeable
var salaryWeek: Double {
    get{
        return self.salaryYear/52
    }
    set (newSalaryWeek){
        self.salaryYear = newSalaryWeek*52
    }
        }
    
var salaryYear: Double = 0.0 {
    //property observer
    //passes new property as a constant
    willSet(newSalary) {
        print("About to set salaryYear to \(newSalary)")
    }
    //property observer
    //passes constant parameter containing old property value.
    didSet {
        if salaryWeek>oldValue {
            print("\(firstName) got a raise.") }
            else {
                print("\(firstName) did not get a raise.")
            }
        }
    }
    
//method
//basically a function in  a class but known as a method as its part of the class
func getFullName() -> String {
return firstName + " " + lastName
}

func giveRaise(amount: Double) {
//we ask for the salaryYear Property for the current instance type, within the the instance
//mainly used to distinguish between local and instance variables that have the same name
self.salaryYear += amount
}

func isEqualFirstName(firstName: String) -> Bool {
return self.firstName == firstName
}
    
// 3 custom initalisers
//setting initals values
init() {
self.firstName = ""
self.lastName = ""
self.salaryYear = 0.0
}
init(firstName: String, lastName: String) {
self.firstName = firstName
self.lastName = lastName
self.salaryYear = 0.0
}
//with external and internal property names
init( employeeWithFirstName firstName: String, LastName lastName: String, andSalary salaryYear: Double) {
self.firstName = firstName
self.lastName = lastName
self.salaryYear = salaryYear
}
    
//failable initialiser, valid instance or nil
//return is included here as instance could be nil if salary < 20,000
init?(firstName: String, lastName: String, salaryYear: Double) {
self.firstName = firstName
self.lastName = lastName
self.salaryYear = salaryYear
if self.salaryYear < 20_000 {
return nil
}
}
    
    
}



/*
var f = EmployeeStruct(firstName: "Jon", lastName: "Hoffman", salaryYear:
39_000)
print(f.salaryWeek) //prints 750.00 to the console
f.salaryWeek = 1000
print(f.salaryWeek) //prints 1000.00 to the console
print(f.salaryYear) //prints 52000.00 to the console
*/

//ACCESSING METHOD etc OUTSIDE THE CLASS
//INSTANCE CREATION
//ACCESSING THE getFullName () Method
var e = EmployeeClass()
var enext = EmployeeStruct(firstName: "Jon", lastName: "Hoffman", salaryYear: 50000)
e.firstName = "Jon"
e.lastName = "Hoffman"
e.salaryYear = 50000.00
print(e.getFullName())
print(enext.getFullName())


//INHERITANCE

class Plant {
var height = 0.0
var age = 0
    
func growHeight(inches: Double) {
//height = height + inches
height += inches;
    
}
}

//subclass of Plant
//colon indicates the class has a Super Class
class Tree: Plant {
var limbs = 0
    
func limbGrow() {
self.limbs += 1
}
func limbFall() {
self.limbs -= 1
}
}

class PineTree: Tree {
var needles = 0
}

class OakTree: Tree {
var leaves = 0
}

//how to use the inheritance
//creating an instance fo Tree
var tree = Tree()
tree.age = 5
tree.height = 4
tree.limbGrow()
tree.limbGrow()
