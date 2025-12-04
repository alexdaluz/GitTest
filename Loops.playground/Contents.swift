import UIKit

import Foundation

// 1. FOR-IN LOOP
print("=== For-In Loop ===")

// Range examples
let closedRange: ClosedRange<Int> = 10...15
let halfOpenRange: Range<Int> = 10..<15

print("Closed range 10...15:")
for number in closedRange {
    print(number)
}

print("\nHalf-open range 10..<15:")
for number in halfOpenRange {
    print(number)
}

// Reverse order
print("\nCounting down from 5 to 0:")
for number in (0...5).reversed() {
    print(number)
}



// 2. WHILE LOOP
print("\n=== While Loop ===")

var counter = 0

while counter < 5 {
    print("Counter is \(counter)")
    counter += 1
}


// 3. REPEAT-WHILE LOOP
print("\n=== Repeat-While Loop ===")

var value = 5

repeat {
    print("Value is \(value)")
    value -= 1
} while value >= 0

//  Loop until random hits
print("\n=== Loop Until Random Hits 3 ===")

var tries = 0
var randomNumber = 0

while randomNumber != 3 {
    randomNumber = Int.random(in: 1...5)
    tries += 1
    print("Rolled \(randomNumber)")
}

print("Took \(tries) tries to roll a 3")
