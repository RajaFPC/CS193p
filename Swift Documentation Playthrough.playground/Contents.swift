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

class namedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func IncreaseSides(by number: Int) -> Int{
        numberOfSides += number
        return numberOfSides
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = namedShape(name: "Troy" )
shape.IncreaseSides(by: 3)
print(shape.simpleDescription())

class Circle: namedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
    override func simpleDescription() -> String {
        return "A circle with radius: \(radius)"
    }
    
}
let testCircle = Circle(radius: 3.0, name: "Hole")
print(testCircle.area())
print(testCircle.simpleDescription())

class EquilateralTriangle : namedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
    }
    
    var perimeter: Double {
        get {
          return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
        
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.777, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 144
print(triangle.sideLength)

enum ServerResponse {
    case result(String, String)
    case runTime(String)
    case failure(String)
}


let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let runTime = ServerResponse.runTime("8:09 pm")

switch success {
case let .runTime(timeStamp):
    print("404 error occured at \(timeStamp).")
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
    
}

/*
Pseudo code:
 let response = ... // dynamically created from server data

 switch response {
 case let .runTime(timeStamp):
     print("404 error occured at \(timeStamp).")
 case let .result(sunrise, sunset):
     print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
 case let .failure(message):
     print("Failure...  \(message)")
 }
 
 IRL example:
struct ServerResult: Decodable {
     let type: String
     let sunrise: String?
     let sunset: String?
     let message: String?
 }

 func makeServerResponse(from data: Data) -> ServerResponse? {
     let decoder = JSONDecoder()
     if let result = try? decoder.decode(ServerResult.self, from: data) {
         switch result.type {
         case "result":
             return .result(result.sunrise ?? "", result.sunset ?? "")
         case "failure":
             return .failure(result.message ?? "")
         case "runTime":
             return .runTime(result.message ?? "")
         default:
             return nil
         }
     }
     return nil
 }
 */


enum Rank: Int, CaseIterable {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king


    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
//    init?(rawValue: Int) {
//        if rawValue > 1 && rawValue < 14 {
//            Rank(rawValue: rawValue.self)
//        } else {
//            return nil
//        }
//    }
}
if let convertedRank = Rank(rawValue: 12) {
    let Description = convertedRank.simpleDescription()
    print(Description)
}

let ace = Rank.ace
let aceRawValue = ace.rawValue
print(aceRawValue)

let King = Rank.king
print(King.rawValue)

let numDisc = Rank.six.simpleDescription()
print(numDisc)

func RankComparison(_ first: Rank, _ second: Rank) -> () {
    if first.rawValue < second.rawValue {
        print("\(second) you peasent \(first)" )
    } else if first.rawValue > second.rawValue {
        print("\(first) you peasent \(second)")
    } else{
        print("""
We are the same kind fam!!
Welcome to the \(first)s' club
""")
        
    }
}
RankComparison(.five, .ten)

RankComparison(.king, .king)

enum Suit: CaseIterable {
    case spades, hearts, diamonds, clubs


    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        if self == .hearts || self == .diamonds {
            return "red"
        } else {
            return "black"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let colorOfHearts = hearts.color()

print(heartsDescription,colorOfHearts)

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
}

func genDeck() -> [Card] {
    var deck: [Card] = []
    for suit in Suit.allCases {
        for rank in Rank.allCases{
            deck.append(Card(rank: rank, suit: suit))
        }
    }
    return deck
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

// Generate a full deck of cards and print some details
// let starterCard = Card(rank: .ace, suit: .spades)
let deck = genDeck()
print("Total cards in deck: \(deck.count)")
print(deck.map { $0.simpleDescription() })

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<numberOfTimes {
        result.append(item)

    }
    return result
}
print(makeArray(repeating: "Knock Knock - Who's there?", numberOfTimes: 4))

// Reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
    where T.Element: Equatable, T.Element == U.Element
{
    var commons: [T.Element] = []

    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                commons.append(lhsItem)
            }
        }
    }
   return commons
}
print(anyCommonElements([1, 2, 3, 7,8,9], [3,2,3,5,77,8]))
