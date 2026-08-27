// <#Structures & Classes#>
// Model custom types that encapsulate data
//// An instance of a class is traditionally known as an object.

// Syntax
struct SomeStructure {
    // structure definition goes here
}
class SomeClass {
    // class definition goes here
}

// Whenever you define a new structure or class, you define a new Swift type. Give types <#UpperCamelCase#> names (such as SomeStructure and SomeClass here) to match the capitalization of standard Swift types (such as String, Int, and Bool).

// Give properties and methods <#lowerCamelCase#> names (such as frameRate and incrementCount) to differentiate them from type names.

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

// Instances
let someResolution = Resolution()
let someVideoMode = VideoMode()

// Accessing Properties
// You can access the properties of an instance using the dot syntax.

print("Some resolution is \(someResolution.width) x \(someResolution.height)")

// can drill down into subproperties
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

// can use the dot syntanx to assign a new value to a variable property:
someVideoMode.resolution.height = 1080
someVideoMode.resolution.width = 1920
print("The new Height & Width of Video mode are \(someVideoMode.resolution.height) & \(someVideoMode.resolution.width) ")

// Unlike structures, class instances don’t receive a default memberwise initializer.
let vga = Resolution(width: 640, height: 480)

// Value Types
// A value type is a type whose value is copied when it’s assigned to a variable or constant, or when it’s passed to a function.
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")
print("hd is still \(hd.width) pixels wide")

// So since cinema is a copy of the hd instance when u change cinema it doesn't effect HD
// same behavior applies to enums
enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")

// Classes are Reference Types unlike struct which are Value types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")

// So when referenced they both point to the same instance
// even tho the tenEighty are both constants were still able to change their values because we reference to the videomode and change it.

// Identity Operators
// It can sometimes be useful to find out whether two constants or variables refer to exactly the same instance of a class.
// Identical to (===)
// Not identical to (!==)
if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same Videomode instance.")
}

// === is not the same as ==
