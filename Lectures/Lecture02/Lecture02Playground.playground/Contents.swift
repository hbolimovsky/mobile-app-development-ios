//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "Hello, CSC 214!"

//
// integers
//
var aFirstInteger: Int     // type but no value
aFirstInteger = 234        // assigns value to previously declared variable
var aSecondInt = 123       // type is inferred from literal value
var aThirdInt = aSecondInt // makes a COPY (type inferred), NOT a reference to the same
                           //     integer.  changes to one won't affect the other
aSecondInt = 1             // 125 replaced with 1
aThirdInt = aThirdInt + 4  // retained oridinal value
var aFourthInt = 123
//aFourthInt = 12.34       // Error: Swift is strongly typed; can't assign a floating
                           //     point value to an integer variable

//
// constants
//
let aConstantInt = 123       // "let" is used to create a constant
//aConstantInt = 234         // Error: you can't reassign a constant
let anotherConstantInt: Int  // you can declare a constant without assigning it
anotherConstantInt = 456     // and later give it a value that cannot change
//anotherConstantInt = 567   // Error: constants can be assigned only once

//
// initializers
//
let initDefault = Int()        // default initializer; 0
let initString = Int("999")    // init with string
let initWithFloat = Int(45.67) // init with float; floor

//
// Booleans
//
var aFirstBool: Bool       // type but no value
aFirstBool = true          // assign the literal "true"
aFirstBool = false         // assign the literal "false"
var aSecondBool = true     // type is inferred from literal value
//aSecondBool = 23         // Error: Swift is still strongly typed.

let initBoolDef = Bool()   // default initializer; false
let initBoolOne = Bool(1)  // init with Int (1); true
let initBoolZer = Bool(0)  // init with Int (0); false
let initBoolNeg = Bool(-1) // init with Int (-1); true


//
// floating point numbers
//
let aFloat: Float = 12.34           // 32-bit
let aDouble: Double = 1234567.89567 // 64-bit
let aFloat80: Float80 = 12345678901234567890.12345678901234567890 // 80-bit
let anotherFloat = 2                // assigning an integer literal to a float is fine
let yetAnotherFloat = aSecondInt    // assigning an integer variable to a float is also fine

let initFloatDef = Float()          // default; 0
let initFloatStr = Float("12.56")   // init with string
let initFloatInt = Float(12345)     // init with int


// strings
let aFirstString = "abc"    // type inferred
let aSecondString: String   // type explicit, no value
aSecondString = "def"       // assigns a value to previously declared variable
aSecondString.isEmpty       // not empty
let aThirdString = ""       // the empty string
aThirdString.isEmpty        // is empty


//
// arrays
//
var aFirstArray: Array<Int>      // type but no values
aFirstArray = [1, 2, 3]          // assigns a value
aFirstArray.count                // the number of elements in the array; 3
aFirstArray.append(7)            // adds a value to the array
aFirstArray.count                // count is now 4
//aFirstArray.append("abc")      // Error: strongly typed; can't add strings to an int array
let anElement = aFirstArray[1]   // arrays are indexed starting at 0

let aSecondArray: [Int]          // shorthand for type; preferred
//aSecondArray = ["abc", "def"]  // Error: arrays are strongly typed; can't add strings 
                                 // to an array of ints
aSecondArray = [4, 5]            // create an array with two elements
aSecondArray.count               // the number of elements in the array
//aSecondArray.append(6)         // Error: cannot append to a constant array
//var bad = aSecondArray[2]      // Error: there are only 2 elements in the array; can't
                                 //   get the third.

let initArrayDef = Array<String>()               // empty array
let initArrayArr = Array<String>(["abc", "def"]) // init with literal

let anArrayOfArrays: Array<Array<Int>>      // an array of arrays of ints
anArrayOfArrays = [[1],[4,5,6],[7,8]]       // assign a literal value; ragged arrays OK
let anotherElement = anArrayOfArrays[1][2]  // index of 3rd element in 2nd array


//
// sets
//
let aFirstSet: Set<Int>                   // a set of ints
aFirstSet = Set()                         // empty set
let aSecondSet = Set([123, 456, 789])     // initialize with array; order is lost
aSecondSet.count                          // number of elements in the set; 3
aSecondSet.contains(123)                  // contains 123? true
//aSecondSet.insert(321)                  // Error: cannot insert into constant set
let aThirdSet = Set([123, 123, 456, 123]) // duplicate elements removed
var aFourthSet = Set<Int>()               // empty set
aFourthSet.insert(123)                    // insert 123
aFourthSet.insert(789)                    // insert 789
aFourthSet.insert(123)                    // element not added


//
// dictionaries
//
let aFirstDict: Dictionary<Int,String>            // a dictionary of Int keys and String values
let aSecondDict: [Int:String]                     // shorthand
aSecondDict = [1: "one", 2: "two", 3: "three"]    // literal assignment


//
// optionals and nil
//
let anUnassignedInt: Int
//let aBadAssignment = anUnassignedInt     // Error: can't use a variable before it is assigned
var anOptionalFloat: Float?                // an optional float; may or may not be nil
//var total = anOptionalFloat + 5          // Error: need to unwrap the optional
//var total = anOptionalFloat! + 5         // Error: can force the unwrap with !, but causes a trap
                                           //   if the optional is nil
anOptionalFloat = 7
var total = anOptionalFloat! + 5           // this works but is potentially unsafe (see above)

