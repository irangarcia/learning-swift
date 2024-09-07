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

// Classes

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func summary() {
        print("I work \(hours) hours a day")
    }
}

class Developer: Employee {
    func work() {
        print("I'm coding for \(hours) a day")
    }
    
    // Override a method
    override func summary() {
        print("I work in the front of the computer \(hours) hours a day")
    }
}

let Iran = Developer(hours: 8)
Iran.work() // I'm coding for 8 hours a day
Iran.summary() // I work in the front of the computer 8 hours a day

// Initializers

class Vehicle {
    let isEletric: Bool
    
    init(isEletric: Bool) {
        self.isEletric = isEletric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    // Call super here to initialize also the property from the parent
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isEletric: isElectric)
    }
}

class Actor {
    var name = "Nicolas Cage"
}

var actor1 = Actor()
var actor2 = actor1

actor2.name = "Tom Cruise"
actor1.name == actor2.name // true

// Deinitializers

class Site {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Site \(id): I've been created")
    }
    
    deinit {
        print("Site \(id): I've been destroyed")
    }
}

for i in 1...2 {
    let site = Site(id: 1)
    
    print("Site \(site.id): I'm control")
    // Site 1: I've been created / I'm in control / I've been destroyed
    // Site 2: I've been created / I'm in control / I've been destroyed
}
