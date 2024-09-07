// Loops

// For

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)")
}

for i in 1...10 {
    print ("5 x \(i) is \(5*i)") // ... 5x10 is 50
}
     
for i in 1..<10 {
    print ("5 x \(i) is \(5*i)") // ... 5x9 is 45
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

// Continue

let files = ["me.jpg", "work.txt", "sophie.png"]

for file in files {
    if !file.hasSuffix(".jpg") {
        continue
    }
    
    print("Found picture \(file)")
}

// While
   
var count = 10

while count > 0 {
    print("\(count)...")
    count -= 1 // 10... 9... 8...
}
