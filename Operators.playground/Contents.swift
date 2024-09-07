// Operators

// Assignment

let b = 10

var a = 5

a = b // 10

// Arithmetic

1 + 2
"Hello, " + "world!"

5 - 3

2 * 3

10 / 2

var counter = 10
counter += 5 // 15

// Comparison

1 == 1

2 != 1

2 > 1

1 < 2

1 >= 1

2 <= 1

// Nil coalescing

var color: String?
let red = "Red"

color != nil ? color! : red

// Range

for index in 1...5 {
    print(index) // 1 2 3 4 5
}

// Half-open range

for index in 1..<5 {
    print(index) // 1 2 3 4
}

// One-sided range

let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names[2...] {
    print (name) // Brian Jack
}

for name in names[...2] {
    print (name) // Anna Alex Brian
}

// Logical

// NOT: !a
// AND: a && b
// OR: a || b
