// Initialization

// Set the initial values for a type’s stored properties

struct Fahrenheit {
    var temperature: Double
    
    init() {
        temperature = 32.0
    }
}

// Default property value

struct Fahrenheit2 {
    var temperature = 32.0
}

// Initialization parameter

struct Celsius {
    var temperatureInCelsius: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)

let freezingPointOfWater = Celsius(fromKelvin: 273.15)

// Optional property types

class SurveyQuestion {
    var text: String
    
    var response: String?
    
    init(text: String) {
        self.text = text
    }
    
    func ask() {
        print(text)
    }
}

let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")

cheeseQuestion.ask()

cheeseQuestion.response = "Yes, I do like cheese."
