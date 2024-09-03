// Strings

// Strings are value types
// A new copy of the existing String is created and the new copy is passed or assigned (not the original version)

let emptyString = ""

let anotherEmptyString = String()

let string = "Literal value"

let multilineString = """
This is the first line
This is the second one
"""

// Interpolation

let interpolation = "6 times 7 is \(6 * 7)."

// Special characters

let quote = "\"Stay hungry. Stay foolish\" - Steve Jobs"

let blackHeart = "\u{2665}"

// Methods

var welcome = "Hello"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))

// String comparison

let quotation = "We're equal"
let sameQuotation = "We're equal"

quotation.elementsEqual(sameQuotation)


