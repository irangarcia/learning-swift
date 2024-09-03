// Structures and Classes

// Structures are **value** types
// Classes are **reference** types

// Classes have aditional capabilities:
// - Inheritance enables one class to inherit the characteristics of another.
// - Type casting enables you to check and interpret the type of a class instance at runtime.
// - Deinitializers enable an instance of a class to free up any resources it has assigned.
// - Reference counting allows more than one reference to a class instance.

// Definition syntax

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

// Memberwise initializers for structure types

let vga = Resolution(width: 640, height: 480)
