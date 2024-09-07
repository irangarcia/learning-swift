// Functions

// Without parameter

func sayHelloWorld() -> String {
    return "Hello, world"
}

sayHelloWorld()

// Parameter

func greet(person: String) -> String {
    let greeting = "Hello, " + person
    
    return greeting
}

greet(person: "Iran")

// Multiple parameters

func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return "Hello again, " + person
    } else {
        return greet(person: person)
    }
}

print(greet(person: "Iran", alreadyGreeted: true))

// Implicit return

func greeting(person: String) -> String {
    "Hello, " + person + "!"
}

// Return multiple values

func getUser() -> (firstName: String, lastName: String, uselessInfo: String) {
    (firstName: "Iran", lastName: "Garcia", uselessInfo: "Left-hand")
}

let (firstName, lastName, _) = getUser()

print(firstName, lastName) // Iran Garcia

// Argument label

func greet(from hometown: String) -> String {
    return "Glad you could visit from \(hometown)."
}

print(greet(from: "Cupertino"))

// Omit argument labels

func someFunction(_ firstParameterName: Int, secondParameterName: Int) {}

someFunction(1, secondParameterName: 2)


// Default parameter values

func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {}

someFunction(parameterWithoutDefault: 4)

// Handling errors

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 10 {
        return "OK"
    } else {
        return "Good!"
    }
}

do {
    let result = try checkPassword("12345")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage")
} catch {
    print("There was an error.")
}
