// Variables & Constants are names that associate with a value of particular type.
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

// Can declare multiple vars/lets in the same line
var x = 0.0, y = 0.0, z = 0.0

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"
let 💎 = "Shine bright like a diamond"

let minValue = UInt.min
let maxValue = UInt.max

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

// Diff ways to represent
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Type conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double

// Tuples
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

//Optional use case
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// The type of convertedNumber is "optional Int"

// Nil
if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value."
//When you access an optional value, your code always handles both the nil and non-nil case. There are several things you can do when a value is missing, as described in the following sections:
//
//Skip the code that operates on the value when it’s nil.
//
//Propagate the nil value, by returning nil or using the ?. operator described in Optional Chaining.
//
//Provide a fallback value, using the ?? operator.
//
//Stop program execution, using the ! operator.
//
