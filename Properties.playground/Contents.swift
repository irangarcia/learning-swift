// Properties

// Access stored and computed values that are part of an instance or type

// Stored properties

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 1)

rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

// ERROR: Is declared as a constant
// rangeOfFourItems.firstValue = 6

// Lazy stored properties
// Always declare a lazy property as a `var` becuase its initial value might not be retrieved until after instance initialization completes

class DataImporter {
    // ...
    var filename = "data.txt"
    // ...
}


class DataManager {
    lazy var importer = DataImporter()
}

// Computed properties

struct Employee {
    let name: String
    var vacationAllowed = 0
    var vacationTaken = 0
    
    // Can't modify
    var vacationRemaining: Int {
        vacationAllowed - vacationTaken
    }
    
    // Now you can modify
    var vacationRemainingDynamic: Int {
        get {
            vacationAllowed - vacationTaken
        }
        
        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
}



// Property observers

// Run when a property changes

class StepCounter {
    var totalSteps: Int = 0 {
        // Before
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        // After
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()

stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps

// Static properties

// Allow to create properties and methods that belong to a type, rather than to instances of a type.

struct AppData {
    static let version = "1.3 beta 2"
    static let settingsFile = "settings.json"
}

print(AppData.version)
