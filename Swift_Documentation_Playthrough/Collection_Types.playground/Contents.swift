// Creating an empty Array
var someInts: [Int] = []
print("SomeInts is of the type [Int] with: \(someInts.count) items.")

var SomeInts = [Int]()
print("SomeInts is of the type [Int] with: \(SomeInts.count) items.")

// Creating an Array with a default value
var threeDoubles = Array(repeating: 0.0, count: 3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]

// Creating an Array by adding 2 Arrays together
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]

var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

    
// Arrays Accessing properties
var shoppingList = ["cat fillets", "detox water", "milk", "eggs", "toilet paper",]

shoppingList.count
shoppingList.isEmpty

shoppingList.append("Flour")

shoppingList += ["Bapple", "Banana", "Orange"]

var secondItem = shoppingList[1]

shoppingList[1] = "SevenElven"

shoppingList.insert("Maple Syrup", at: 0)

shoppingList[4...6] = ["Bafana", "Olange", "Pineaaple"]

print(shoppingList)

let mapleSyrup = shoppingList.remove(at: 0)

let apples = shoppingList.removeLast()

print(shoppingList)

// Iterating over an Array
for item in shoppingList {
    print(item)
}

// using enumerated returns a tuple composed of int and the value (If we want the index & the value)
for (index, item) in shoppingList.enumerated(){
    print("Index \(index + 1) has \(item)")
}

// Dictionaries
// Empty dictionary
var namesOfIntegers : [Int:String] = [:]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

print("These are the airports I have: \(airports) and quantity is \(airports.count)")

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}

// adding an item to the dictionary
airports["LHR"] = "London"

// you could also change the value associated with a key
airports["LHR"] = "London Heathrow"

// Using updateValue to add or update
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("The old value for DUB was \(oldValue)")
}

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport isn't in the airports dictionary.")
}

if let airportName = airports["BOB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport isn't in the airports dictionary.")
}
// Remove a value from the dictionary
airports["APL"] = "Apple International"
// "Apple International" isn't the real airport for APL, so delete it
airports["APL"] = nil
// APL has now been removed from the dictionary

print(airports)

// Using the removeValue
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary doesn't contain a value for DUB.")
}

print(airports["DUB"])

// Iterating over Dictionary
for (airportCode, airportName) in airports{
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("\(airportCode)")
}

for airportName in airports.values {
    print("\(airportName)")
}

// If you need to convert the dictionaries into Arrays so the API's could use them, use the [string] and if they need to be sorted use that method.

let airportCodes = [String](airports.keys).sorted()
let airportNames = [String](airports.values).sorted()


