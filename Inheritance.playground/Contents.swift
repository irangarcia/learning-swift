// Inheritance

// Subclass to add or override functionality

// Base class

class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        // do nothing
    }
}

// Subclassing

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()

bicycle.currentSpeed = 15.0

print("Bicycle: \(bicycle.description)") // Bicycle: traveling at 15.0 miles per hour

// Overriding methods

class Train: Vehicle {
    override func makeNoise() {
        print("🔊🔊🔊")
    }
}

// Preventing overrides

class EletricVehicle {
    final func makeNoise() {
        // do nothing
    }
}
