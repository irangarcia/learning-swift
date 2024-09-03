// Optional Chaining

// Access members of an optional value without unwrapping.

// Alternative to Forced Unwrapping (!)

class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Person {
    var residence: Residence?
}

class Residence {
    var rooms: [Room] = []
    
    var numberOfRooms: Int {
        return rooms.count
    }
    
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
}

let john = Person()

// Error
// let roomCount = john.residence!.numberOfRooms

if let roomCount = john.residence?.numberOfRooms {
    print("John's has \(roomCount) room(s)")
} else {
    print("Unable to retrieve the number of rooms.")
}

// Accessing subscripts through optional chaining

let firstRoomName = john.residence?[0].name
