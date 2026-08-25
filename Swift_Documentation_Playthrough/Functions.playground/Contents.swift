// Functions
func greet(person: String) -> String{
    let greeting = "Hello there " + person + "!"
    return greeting
}
print(greet(person: "Abhi"))

// To make the body shorter
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))

// Func Parameters and Return Values

// Func without parameters
func sayHello() -> String {
    return "Hello"
}

print(sayHello())

// Func with multiple parameters
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))
print(greet(person: "Tim", alreadyGreeted: false))

// Func without Return values
func greep(person: String) {
    print("Hello, \(person)!")
}
greep(person: "Dave")

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
printAndCount(string: "hello, world")
printWithoutCounting(string: "hello, world")

// Func with multiple returns \
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")

// Optional tuple return types
func OptMinMax(Array: [Int]) -> (Min: Int, Max: Int)? {
    if Array.isEmpty {
        return nil
    } else {
        var currentMin = Array[0]
        var currentMax = Array[0]
        for value in Array[1..<Array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
}

let bounds2 = OptMinMax(Array: [])
print("min is \(bounds2?.Min) and max is \(bounds2?.Max)")

// Func with Implicit Return
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}
print(greeting(for: "Dave without return"))
// Prints "Hello, Dave!"


func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(firstParameterName: 1, secondParameterName: 2)

// Arg - 1, 2 Parameters - firstParameterName,secondParameterName

// Specifying Argument Labels
func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
}

// In the function below "from" is the argument Label
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))
// Prints "Hello Bill!  Glad you could visit from Cupertino."

// Ommiting Argument Labels
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)

// Example
func CompareTheHorses(_ Car1HP: Int, vs Car2HP : Int) -> (){
    if Car2HP < Car1HP {
        return print("Car 1 with \(Car1HP) HP is faster than Car 2")
    } else {
        return print("Car 2 with \(Car2HP) HP is faster than Car 1")
    }
}

CompareTheHorses(777, vs: 750)

// Default Parameter Value
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12

// Function Types
// Func type is defined by the parameter type and the return type of the func
func addTwoInts(_ a: Int, _ b : Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
// Both of the above functions are of the type Ints' returning Int

// Now this type of func() -> returns void
func printHelloWorld() {
    print("hello, world")
}
// No parameters and returns Void.

var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2,5))")

let anotherMathFunction = multiplyTwoInts
// anotherMathFunction is inferred to be of type (Int, Int) -> Int

// Function Types as Parameter Types
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

// Function Types as Return Types
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    if  backward {
        return stepBackward
    } else {
        return stepForward
    }
}
// the error is dumb it should work not sure why it's not working

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the stepBackward() function
print("Counting to zero:")
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

// Nested Loops
// Usually a when nesting the loops inside the body of another funtion it's only accessible by that enclosing function (due to scope) unless that enclosing function returns the nested function.

func chooseNestedStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
currentValue = -4
let moveNearerToZeroAgain = chooseNestedStepFunction(backward: currentValue > 0)
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZeroAgain(currentValue)
}
print("zero!")
