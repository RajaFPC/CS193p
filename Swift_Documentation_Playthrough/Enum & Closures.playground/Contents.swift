// Closure
// They are self contained blocks of functionality that can be passed around and used in your code.
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)

// Closure Expression Syntax
//    { (<#parameters#>) -> <#return type#> in
//       <#statements#>
//    }

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )

// Inferring Type from Context
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

// Implicit return from Single - Expression Closure
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )

// Shorthand Argument Names
reversedNames = names.sorted(by: { $0 > $1 } )

// Operator Methods
reversedNames = names.sorted(by: >)

// Trailing Closure
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}


// Here's how you call this function without using a trailing closure:


someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})


// Here's how you call this function with a trailing closure instead:


someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}

reversedNames = names.sorted() { $0 > $1 }
// same as above
reversedNames = names.sorted { $0 > $1 }

// How to use a trailing closure to convert an array of Int into an array of String values. i.e - The array [16, 58, 510] is used to create the new array ["OneSix", "FiveEight", "FiveOneZero"]:
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

// If a function takes multiple closures, you omit the argument label for the first trailing closure and you label the remaining trailing closures. For example, the function below loads a picture for a photo gallery:

//    func loadPicture(from server: Server, completion: (Picture) -> Void, onFailure: () -> Void) {
//        if let picture = download("photo.jpg", from: server) {
//            completion(picture)
//        } else {
//            onFailure()
//        }
//    }
// When you call this function to load a picture, you provide two closures. The first closure is a completion handler that displays a picture after a successful download. The second closure is an error handler that displays an error to the user.

//    loadPicture(from: someServer) { picture in
//        someView.currentPicture = picture
//    } onFailure: {
//        print("Couldn't download the next picture.")
//    }

// <##Enumerations##>
// Syntax
enum SomeEnumeration {
    // enumeration definition goes here
}

// valid to do single line
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompassPoint.west

// Once the directiontohead knows we are referencing CompassPoint we can use shorter dot syntax

directionToHead = .east

// <#Matching Enumeration Values with a Switch Statement#>
// You can match individual enumeration values with a switch statement:

directionToHead = .south

switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

// we gotta make sure that all the enum cases are listed in the switch statement for it work properly, since switch statements should be exhaustive. if not then we will have to use a default case and then not worry about having all the enum cases.

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly Harmless")
default:
    print("Not safe place for humans.")
}

// Iterating over Enum Cases - CaseIterable
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

for beverage in Beverage.allCases {
    print(beverage)
}

// Associated Values
// These associated values are additional to the case values
// These value types can be different for each case of the enum if needed
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

// Create a Barcode
var productBarcode = Barcode.upc(8, 85909, 51226, 3)

productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}

// Another way to do the switch - you can directly use the if-case
if case .qrCode(let productCode) = productBarcode {
    print("QR code: \(productCode).")
}

// Raw Values (An alternative to Associated values, enums can now come prepopulated with default values)
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

