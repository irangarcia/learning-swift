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
