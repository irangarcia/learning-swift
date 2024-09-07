// Collection Types

// Arrays

var shoppingList = ["Eggs", "Milk"]

var someInts: [Int] = [2, 4, 6]

var threeDoubles = Array(repeating: 0.0, count: 3) // [0.0, 0.0, 0.0]

// Methods

someInts.append(8) // [2, 4, 6, 8]

someInts.remove(at: 0) // [4, 6, 8]

shoppingList.contains("Eggs") // true

shoppingList.count // 2

threeDoubles.isEmpty // false

shoppingList.insert("Maple Syrup", at: 0) // ["Maple Syrup", "Eggs", "Milk"]

// Iterating over

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

// #####

// Dictionary

var namesOfIntegers: [Int: String] = [:]

var airports: [String: String] = [
    "YYZ": "Toronto Pearson",
    "GRU": "Guarulhos"
]

airports["JFK", default: "John F. Kennedy"]

// Methods

namesOfIntegers.isEmpty // true

airports.keys // ["YYZ", "GRU"]

airports.values // ["Toronto Pearson", "Guarulhos"]

airports.updateValue("Toronto Airport", forKey: "YYZ")

airports.removeValue(forKey: "GRU")

// Iterating over

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

// Set

// Don't store things in a particular order and duplicates

var numbers = Set([1, 1, 3, 5, 7, 9])

print(numbers) // [random order]

numbers.insert(10)

// Runs instantly (very fast)
numbers.contains(11) // false
