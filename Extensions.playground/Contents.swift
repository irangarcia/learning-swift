// Extensions

// Add functionality to an existing type

extension String {
    func checkIfItsString() -> Bool {
        return true
    }
    
    mutating func index() -> Int {
        return 100
    }
}

var test: String = "Test"

test.checkIfItsString() // true

test.index() // 100
