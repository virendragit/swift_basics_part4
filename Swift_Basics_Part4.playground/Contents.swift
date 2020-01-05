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

//String Interpolation (String Mix of constants, veriables ,literals, and expressions)

let multiplier = 3.0
let message = "\(multiplier) times 2.5 is \(multiplier * 2.5)"

print(#"6 times 7 is \#(6 * 7)."#)

//Accessing and modifying a string

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
print("end Index ",greeting[greeting.index(before: greeting.endIndex)])
print(greeting[greeting.index(after: greeting.startIndex)])

let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

//Inserting and Removing

var welcome1 = "hello"
welcome1.insert("!", at: welcome1.endIndex)

welcome1.remove(at: welcome1.index(before: welcome1.endIndex))
print(welcome1)

//you can use insert(_:at:), insert(contentOf:at:), remove(at:), and removeSubrange(_:)
//methods on any type that conforms to RangeReplaceableCollection protocol.
//This includes String and other collection types such as Array, Dictionary and Set.

//Substring
let greeting1 = "Hello, world"
let indexOfchar = greeting1.firstIndex(of: ",") ?? greeting1.endIndex
print(indexOfchar)

let beginning = greeting1[..<indexOfchar]

//convert the result to a String for the long-term storage.

let newString = String(beginning)

//String and Character Equality.
//String and character in swift are not locale-sensitive.

//Prefix and Suffix Equality

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet{
    
    if scene.hasPrefix("Act 1"){
        
        act1SceneCount += 1
    }
}

print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion"){
        mansionCount += 1
    }else if scene.hasSuffix("Friar Lawrence's cell"){
        cellCount += 1
    }
}

print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

//Unicode representation of Strings

let dogStrin = "Dog!!🐶"

for codeUnit in dogStrin.utf8{
    print("\(codeUnit) ", terminator:" ")
}

for codeUnit in dogStrin.utf16{
    print("\n \(codeUnit) ", terminator:" ")
}


for scalar in dogStrin.unicodeScalars{
    print("\(scalar)")
}


















