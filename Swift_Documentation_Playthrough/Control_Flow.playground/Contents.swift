// For-in Loops
// Use it with Arrays
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names{
    print("Hello, \(name)!")
}

// use it with Dictionaries
let numberOfLegs = ["Bug": 6, "Ant": 6, "Human": 2, "Dog": 4, "Horse": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs.")
}

// Use it with Range of Numbers
for number in 1...5{
    print("\(number) times 5 is \(number * 5)")
}

// If we don't want each value to be used in the loop use _
let base = 2
let power = 10
var result = 1
for _ in 1...power{
    result *= base
}
print("\(base) to the power of \(power) is \(result)")

// Using the Closed Range operator
let minutes = 60
for tick in 1...minutes{
    print("rendering...\(tick)")
}

// Using Half-Open range operator
for tick in 0..<minutes{
    print("rendering...\(tick)")
}

// Using stride(from: to: by:) if we want fewer tick marks
let minuteInterval = 5
for tick in stride(from: 0, to: minutes, by: minuteInterval) {
    print("Rendering tick mark every 5 mins at \(tick)")
}

// Using a closed range stride(from: through: by:)
let hours = 12
let hourInterval = 3
for tick in stride(from: 0, through: hours, by: hourInterval) {
    print("Rendering tick mark every 3 hours at \(tick)")
}

// While Loops
// We are building a Snake & Ladder game using the while loop
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

//Squares with a ladder base have a positive number to move you up the board, whereas squares with a snake head have a negative number to move you back down the board.
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare {
    // roll dice
    diceRoll += 1
    if diceRoll == 7 {diceRoll = 1}
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we are still on the board move up or down for a snake or ladder
        square += board[square]
    }
}

print("Game Over!")

// Repeat-While - similar to do-while
square = 0
diceRoll = 0
repeat {
    // move up or down for a snake or ladder
    square += board[square]
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
} while square < finalSquare
print("Game over!")

// Conditional Statements [If or switch]

// If
var currentTemp = 96
if currentTemp <= 32 {
    print("It's freezing outside!")
} else if currentTemp >= 86 {
    print("It's getting hot outside!")
} else {
    print("Enjoy the weather!")
}

// Another way to do it
let temperatureInCelsius = 25
let weatherAdvice: String


if temperatureInCelsius <= 0 {
    weatherAdvice = "It's very cold. Consider wearing a scarf."
} else if temperatureInCelsius >= 30 {
    weatherAdvice = "It's really warm. Don't forget to wear sunscreen."
} else {
    weatherAdvice = "It's great outside. Wear a T-shirt."
}
print(weatherAdvice)

// If you want to use optionals inside the if statements
let freezeWarning: String? = if temperatureInCelsius <= 0 {
    "It's freezing, watch for ice"
} else {nil}

// or
enum TemperatureError: Error{
    case boiling
}
let WeatherAdvice = if temperatureInCelsius > 100 {
    throw TemperatureError.boiling
} else {
    "It's a reasonable temperature."
}

// Switch
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the Latin alphabet")
case "z":
    print("The last letter of the Latin alphabet")
default:
    print("some other character \(someCharacter)")}
 
// or
let anotherCharacter: Character = "a"
let message = switch anotherCharacter {
case "a":
    "The first letter of the Latin alphabet"
case "z":
    "The last letter of the Latin alphabet"
default:
    "Some other character"
}

print(message)

// * Each case must have a body! *

// Compound Switch Cases
switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

// To explicitly fall through at the end of a particular switch case, use the fallthrough keyword

// Interval Matching
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

// Tuples

// _ is the wildcard pattern anything that matches the pattern, you can also use it to test against a different value or interval of values.
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

// Compound Cases
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) isn't a vowel or a consonant")
}

// Compund cases with value binding
let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}

// Control Transfer Statements - Changes the order in which the code is executed by transfering the control from one piece of code to another.
// We have 5 different control transfer statements in swift:
/*
 1. Continue
 2. break
 3. fallthrough
 4. return
 5. throw
 */

// Continue
// It says I'm done with the current loop without leaving the loop altogether.
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)

// Break
// The break statement can be used inside a switch or loop statement when you would like to terminate the execution of it prematurely
let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value couldn't be found for \(numberSymbol).")
}

// Fallthrough - exactly what it sounds like
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

// Early Exit
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    print("Hello \(name)!")


    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}


greet(person: ["name": "John"])

greet(person: ["name": "Jane", "location": "Cupertino"])

// Deferred Actions - run code later when programm reaches end of the scope
var score = 1
if score < 10 {
    defer {
        print(score)
    }
    score += 5
}
//
//var score = 3
//if score < 100 {
//    score += 100
//    defer {
//        score -= 100
//    }
//    // Other code that uses the score with its bonus goes here.
//    print(score)
//}
//
//if score < 10 {
//    defer {
//        print(score)
//    }
//    defer {
//        print("The score is:")
//    }
//    score += 5
//}
