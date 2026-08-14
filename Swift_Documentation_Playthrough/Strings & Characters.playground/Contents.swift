// String Literals
let somestring = "I have something to say to U 🫵🏽"

// Multiline String Literal
let quote = """
This life is a gift from GOD,
What you do with it is gift back to him
"""
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

let nullChar = "\0"
let backslash = "\\ I say to you, do not be a fool!"
let horizontalTab = "\t 👌"
let newLine = "\n I'm a new line"
let carriageReturn = "\r I'm a carriage return" //Caution can overwrite other stuff
let doubleQuotationMark = "\"johnny\""
print(doubleQuotationMark)
let singleQuotationMark = "\'I\'m a single quotation mark\'"
print(singleQuotationMark)

let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"
Escaping all three quotation marks \"\"\"
"""
print(threeDoubleQuotationMarks)

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let cross = "\u{2020}"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

/*
 Extended string delimiters
 Placing a number sign (#) around a string (#"..."#) disables escape characters like \n. Swift prints the string exactly as typed.

 Example: #"line 1\nline 2"# stays on one line.

 Matching number signs
 To use an escape character inside a delimited string, match the number of # signs.

 Example: #"line 1\#nline 2"# creates two lines.

 Example: ###"text"### requires \###n to create a new line.

 Multiline strings
 Multiline strings use three quotes ("""). If your text includes """, Swift ends the string early. To fix this, wrap the outer boundaries with number signs.

 Start with #""" and end with """#.

 Swift ignores internal """ characters until it sees the exact closing combination.
 */

let delimiter = #"I'm a great programmer \n I'm also great with people \#n I'm going to be a great Manager"#

print(delimiter)

// Initializing an Empty String
var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other
if emptyString.isEmpty {
    print("Nothing to see here")
}

var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"


let constantString = "Highlander"
//constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified

for character in "Dog!🐶" {
    print(character)
}

let exclamationMark: Character = "!"

//Converts an array into a string of characters
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

// Concatenating Strings and Characters
let string1 = "Hello, "
let string2 = " Bestieeeeee "
var welcome = string1 + string2
print(welcome)

var instruction = "look over"
instruction += string2

print(instruction)

// to append it must be a single character only
instruction.append(exclamationMark)

let badStart = """
    one
    two
    """
let end = """
    three
    """
print(badStart + end)


let goodStart = """
    one
    two

    """
print(goodStart + end)

// String Interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

print(message)

print(#"Write an interpolated string in Swift using \(multiplier)."#)

    // Extended Grapheme Clusters
let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // e followed by
// eAcute is é, combinedEAcute is é
                                
let precomposed: Character = "\u{D55C}"                  // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
// precomposed is 한, decomposed is 한

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
// enclosedEAcute is é⃝

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"

// Counting Characters
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

// Doesn't affect the char count
var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in cafe is 4".


word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301


print("the number of characters in \(word) is \(word.count)")

// Diff Extended grapheme characters can be composed of multiple Unicode scalars.

// Accessing & Modifying a String
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a

  
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}

    // Inserting & Removing From and TO string
welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"


welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there!"

welcome.insert(contentsOf: " where are you?", at: welcome.index(before: welcome.endIndex) )

welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there"


let range = welcome.index(welcome.endIndex, offsetBy: -8)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome now equals "hello"

// Substring
let gleetings = "Hello, world!"
let windex = gleetings.firstIndex(of: ",") ?? gleetings.endIndex
let beginning = gleetings[..<index]
// beginning is "Hello"


// Convert the result to a String for long-term storage.
let newString = String(beginning)

// String and Character Equality
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}

// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"


// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"


if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}

// However,
let latinCapitalLetterA: Character = "\u{41}"


let cyrillicCapitalLetterA: Character = "\u{0410}"


if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters aren't equivalent.")
}
// However,
let latinCapitalLetterB: Character = "\u{41}"


let cyrillicCapitalLetterB: Character = "\u{0410}"


if latinCapitalLetterB != cyrillicCapitalLetterB {
    print("These two characters aren't equivalent.")
}
