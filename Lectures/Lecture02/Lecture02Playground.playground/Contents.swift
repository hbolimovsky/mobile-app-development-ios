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
let aFloat = 12.34               // 32-bit
let aDouble = 1234567.89567      // 64-bit
let aFloat80 = 12345678901234567890.12345678901234567890 // 80-bit
let anotherFloat = 2             // assigning an integer literal to a float is fine
let yetAnotherFloat = aSecondInt // assigning an integer variable to a float is also fine

let initFloatDef = Float()        // default; 0
let initFloatStr = Float("12.56") // init with string
let initFloatInt = Float(12345)   // init with int


// strings
let aFirstString = "abc"    // type inferred
let aSecondString: String   // type explicit, no value
aSecondString = "def"       // assigns a value to previously declared variable


//
// arrays
//
let aFirstArray: Array<Int>      // type but no values
aFirstArray = [1, 2, 3]          // assigns a value
let anElement = aFirstArray[1]   // arrays are indexed starting at 0
let aSecondArray: [Int]          // shorthand for type; preferred
//aSecondArray = ["abc", "def"]  // Error: arrays are strongly typed; can't add strings 
                                 // to an array of ints
aSecondArray = [4, 5]            // create an array with two elements
//var bad = aSecondArray[2]      // Error: there are only 2 elements in the array; can't
                                 //   get the third.

let anArrayOfArrays: Array<Array<Int>>      // an array of arrays of ints
anArrayOfArrays = [[1],[4,5,6],[7,8]]       // assign a literal value; ragged arrays OK
let anotherElement = anArrayOfArrays[1][2]  // index of 3rd element in 2nd array


//
//
//


//
// dictionaries
//
let aFirstDict: Dictionary<Int,String>            // a dictionary of Int keys and String values
let aSecondDict: [Int:String]                     // shorthand
aSecondDict = [1: "one", 2: "two", 3: "three"]    // literal assignment
