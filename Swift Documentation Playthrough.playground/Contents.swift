let diecast_size:Float = 1.75
var diecast_count:Int = 10

diecast_count += 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)
print(label,width)

// Interpolating Constants
let pi = 3.14
let Raja = "Raja"

let piday = "I made a pie with radius \(pi) and wrote the name \(Raja) on top of it"
print(piday)

// multi-line string
let High_priest = "Lord"
let quotation = """
✝️
The Lord is my shepherd! I shall not want anything but you, all my days, your Goodness & Mercy, Follow me & I will dwell in the house of the \(High_priest)! 
"""
print(quotation)

// Arrays & Dictionaries
var fruit : [String] = ["apple","banana","cherry"]
fruit[0]
fruit.append("Grapefruit")
print(fruit)

var occupations: [String: String] = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
    "Micah": "Software Engineer",
    "Austin": "Software Engineer"
 ]
occupations["Jayne"] = "Public Relations"
occupations["Micah"] = "Marketer"
print(occupations)

let emptyArray: [Int] = []
let emptyDictionary: [String: Float] = [:]

let testScores = [100, 85, 77, 0, 52, 33, 67, 101, 75]
var momsEmotions = 0
for score in testScores {
    if score > 50 {
        momsEmotions += 3
    }else{
        momsEmotions -= 3
    }
}
print(momsEmotions)

var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false".


var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}else if (optionalName == nil)  {
    greeting = "Hello there"
}
print(greeting)

// shortcut to use optional value
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)

if let nickname {
    print("Hey, \(nickname)")
}

let vegetable = "ghost pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

// FOR-in usecase
// For loop to find MAX no among a library
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0

for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

// While use case
var n = 2
while n < 0 {
    n *= 2
}
print(n)

// Another way to do it.
var m = 2
repeat {
    m *= 2
} while m < 0
print(m)

// ..< use case or ...
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

total = 0
for i in 0...5{
    total += i
}
print(total)

func greet(person: String, Lunch: String) -> String {
    return "Hello \(person), today is \(Lunch)."
}
greet(person: "Bob", Lunch: "Chicken Itza")

func greet(_ person: String, on day: String) -> (){
    return print("Hello \(person), today is \(day).")
}
greet(High_priest, on: "Friday")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0


    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }


    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
//.2 denotes the sum parameter being asked .1 - max, .0- min
print(statistics.2)

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

numbers.map({ (number: Int) -> Int in
        if number % 2 != 0 {
            return 0
        } else{
            return number
        }
    })

class Shape {
    var numberOfSides: Int = 0
    let material = "solid"
    
    func IncreaseSides(by number: Int) -> Int{
        numberOfSides += number
        return numberOfSides
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.IncreaseSides(by: 3)
print(shape.simpleDescription())


class Na  medshape {
    var numberOfSides: Int = 0
    var name: String
    
}
