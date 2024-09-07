// Protocols

// Define requirements that conforming types must implement (the minimum

// Property requirements are always declared as variable properties, prefixed with the `var` keyword.

protocol Vehicle {
    var name: String { get }
    
    var currentPassengers: Int { get set }
    
    
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Citröen C4"
    var currentPassengers: Int = 1
    
    func estimateTime(for distance:Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroof() {
        print("It's a nice day")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Too slow")
    } else {
        // Vehicle always will have the .travel method
        vehicle.travel(distance: distance)
    }
}

let car = Car()

commute(distance: 100, using: car)

// Mutating method requirements

 protocol Togglable {
    mutating func toggle()
}

 enum OnOffSwitch: Togglable {
    case off, on
    
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var lightSwitch = OnOffSwitch.off

lightSwitch.toggle()
