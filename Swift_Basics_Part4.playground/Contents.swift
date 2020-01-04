/* This playground contains explanation and code for the below topics in Swift 5.1
1.String and characters
 */

import UIKit

/* Swift's String type is bridged with Foundation's NSString class.
   You can access those NSString methods on String without casting
 */

let someString = "Some string literal value"

//multiline string literal
let quatation = """
ababbjkand
ad jkasb dkjas

ad kjas das

akd a

adajdanjdnjdbakd.
"""

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

print(softWrappedQuotation)

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"

print(wiseWords)

let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496”

let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""

print(threeDoubleQuotationMarks)

//Initializing a Empty String

var emptyString = ""

var anotherEmptyString = String()

if emptyString.isEmpty {
    print("String has nothing")
}


// String Mutability
var variableString = "Horse"
variableString += " and carriage"
print(variableString)

var constantString = "HighLander"
constantString += "and anohter Highlander"


//Strings are Value Types
//If you create a new String Value, that String Value is copied when it's passed to a function or method.
//or when it's assigned to a constant or variable. In each case, a new copy of the existing String value is created.
//and the new copy is passed or assigend not the original version.


//Working with Characters

for character in "Dog!🐶"{
    print(character)
}

let exclamationMark : Character = "!"

let catChacters: [Character] = ["C", "a", "t", "!", "🐱"]

let catString = String(catChacters)

print(catString)

//Concatenating String and Characters

let string1 = "hello"
let string2 = " there"

var welcome = string1 + string2


var instruction = "took over"
instruction += string2

welcome.append(exclamationMark)














