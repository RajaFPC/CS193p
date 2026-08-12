// Assignment operator
let b = 7
var a = 5
a = b
print(a)

let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2

var Addition = 1 + 2       // equals 3
let Subtraction = 5 - 3       // equals 2
let Multiplication = 2 * 3       // equals 6
let Division = 10.0 / 2.5  // equals 4.0

// Remainder Operator aka Modulo operator %
9 % 4
1 % 4

let three = 3
let minusThree = -three       // minusThree equals -3
let plusThree = -minusThree   // plusThree equals 3, or "minus minus three"

// Compound Assignment Operator
a = 1
a += 2 // a = a + 2
print(a)

/* Comparison Operators:
 Each of the comparison operators returns a Bool value to indicate whether or not the statement is true:


 Equal to (a == b)

 Not equal to (a != b)

 Greater than (a > b)

 Less than (a < b)

 Greater than or equal to (a >= b)

 Less than or equal to (a <= b)
 */

// Tuple comparision:
(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

// Ternary Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// rowHeight is equal to 90

// Nil - Coalescing Operator
let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil


var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"

userDefinedColorName = "blue"
colorNameToUse = userDefinedColorName ?? defaultColorName

/*
 Range Operators:
 1. Closed Range Operator: ...
 2. Half-Open Range Operator: ..<
 */

// Closed Range Operator - useful when working with the ranges
for index in 1...12 {
    print("\(index) times 3 is \(index * 3)")
}

// Half-Open Operator - useful when working with Arrays (zero-based)
let names = ["Raja", "Micah", "Jarred", "Austin", "James"]
let count = names.count
for index in 0..<count {
    print("Hello \(names[index]) your employee id: \(index + 1)")
}

// One-sided Ranges - a range that includes all the elements of an array from index 2 to the end of the array.
for name in names[2...]{
    print(name)
}

print("*****")

for name in names[...3] {
    print(name)
}

let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true

/* Logical Operators
 
 Logical NOT (!a)

 Logical AND (a && b)

 Logical OR (a || b)
*/

// Not Operator !
let allowedEntry = false
if !allowedEntry{
    print("Access Denied")
//} else {
//    print("Come in Lord")
}

// AND operator
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// OR Operator
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// The Swift logical operators && and || are left-associative, meaning that compound expressions with multiple logical operators evaluate the leftmost subexpression first.
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
