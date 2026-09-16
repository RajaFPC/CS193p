// Initalization

// Initializers are called to create a new instance of a particular type.
// init(){
// }

struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")

struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
// boilingPointOfWater.temperatureInCelsius is 100.0
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
// freezingPointOfWater.temperatureInCelsius is 0.0

// Parameter Names and Argument labels
struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)

// let veryGreen = Color(0.0, 1.0, 0.0)
// this reports a compile-time error - argument labels are required

// If you don’t want to use an argument label for an initializer parameter, write an underscore (_) instead of an explicit argument label for that parameter to override the default behavior.

struct Selsius { // Modified due to namespace issues
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ selsius: Double) {
        temperatureInCelsius = selsius
    }
}
let bodyTemperature = Selsius(37.0)
// bodyTemperature.temperatureInCelsius is 37.0

// Optional Property Types
class SurveyQuestion {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func asked(){
        if response == nil{
        print("Question: \(text)")
    } else {
        print("Response: \(response!)")
    }
    }
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")

cheeseQuestion.asked()
cheeseQuestion.response = "Yes, I do like cheese, except Blue cheese I hate it's pungent smell and texture."
cheeseQuestion.asked()

let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.asked()
// Prints "How about beets?"
beetsQuestion.response = "I also like beets. (But not with cheese.)"

class SarveyQuestion {  ///again namespaced for errors this time tryinng if let text instead of var text
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let batsQuestion = SarveyQuestion(text: "How about beets?")
batsQuestion.ask()
batsQuestion.response = "I also like beets. (But not with cheese.)"
let beersQuesiton = SarveyQuestion(text: "How about beers?")
beersQuesiton.ask()

// if the text property is now a constant, it can still be set within the class’s initializer

///Default Initializers
class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()

// Memberwise Initializers for Structure Types
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)

let zeroByTwo = Size(height: 2.0)
print(zeroByTwo.width, zeroByTwo.height)

let zeroByZero = Size()
print(zeroByZero.width, zeroByZero.height)
