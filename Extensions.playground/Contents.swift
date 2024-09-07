// Extensions

// Add functionality to an existing type

extension String {
    func checkIfItsString() -> Bool {
        return true
    }
    
    func noSenseIndex() -> String {
        return "1500"
    }
    
    mutating func index() {
        self = self.noSenseIndex()
    }
}

var test: String = "Test"

test.checkIfItsString() // true

test.index() // 1500

// Protocol Extensions

// Dictionaries, Sets, and Arrays

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["You", "Me", "They"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)") // 3
}
