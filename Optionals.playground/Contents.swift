// Optionals

let opposites = [
    "Palmeiras": "Corinthians",
    "Atlético de Madrid": "Real Madrid"
]

let arsenalOpposite = opposites["Arsenal"] // nil

// Unwraping (most common)

if let palmeirasOpposite = opposites["Palmeiras"] {
    print("Palmeiras' opposite is \(palmeirasOpposite)")
}

// Guard

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: nil) // Missing input
printSquare(of: 8) // 8 x 8 is 64

// Nil coalescing

var tvShows = ["Sopranos", "The Wire", "Game of Thrones"]

let favorite = tvShows.randomElement() ?? "None" // The array could be empty

let input = ""

let number = Int(input) ?? 0 // 0

// Optional chaining

let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased()

print("Next in line: \(chosen ?? "Jon Snow")")

// Optional try

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

// Doesn't care about any errors only what real data got back from the `getUser` function
if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
