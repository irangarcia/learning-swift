// Enumerations

// Cases don’t have an integer value set by default

enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompassPoint.west

directionToHead = .north

// Separated by commas

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

// Enum + Switch

switch directionToHead {
    case .north:
        print("North")
    case .south:
        print("South")
    case .west:
        print("West")
    case .east:
        print("East")
}

// Iterating over cases

enum Beverage: CaseIterable {
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count

for beverage in Beverage.allCases {
    print(beverage) // coffee tea juice
}

// Implicitly assigned raw values

enum Planets: Int {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

Planets.earth.rawValue // 2

enum CompassPoints: String {
    case north, south, east, west
}

CompassPoints.east.rawValue // east

// Initializing from a raw value

let possiblePlanet = Planets(rawValue: 7) // neptune
