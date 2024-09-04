// Protocols

// Define requirements that conforming types must implement

// Property requirements are always declared as variable properties, prefixed with the var keyword.

protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

// `fullName` is mandatory
let john = Person(fullName: "John Appleseed")

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

// Initializer requirements

protocol InitializerProtocol {
    init(someParameter: Int)
}

class InitializerClass: InitializerProtocol {
    required init(someParameter: Int) {
        // initializer implementation goes here
    }
}
