// Closures

let sayHello = { (_ name: String) -> String in
    "Hi \(name)"
}

sayHello("Iran")

let team = ["Green Bay Packers", "Dallas Cowboys", "Philadelphia Eagles", "Detroit Lions"]

let onlyD = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("D")
})

print(onlyD) // ["Dallas Cowboys, "Detroit Lions"]

// Trailing closures and shorthand

// Remove parenthesis
let startWithD = team.filter{ name in
    // Implicit return
    name.hasPrefix("D")
}

let startWithDShortform = team.filter{ $0.hasPrefix("D") }
