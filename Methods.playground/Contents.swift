// Methods

// Instance methods

class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter() // 0

counter.increment() // 1

counter.increment(by: 5) // 6

counter.reset() // 0

// Self
// Swift assumes that you are referring to a property or method of the current instance whenever you use a known property or method withing a method
// So it's not needed to use it and explicitly write `self` very often

struct Point {
    var x = 0.0, y = 0.0
    
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}
