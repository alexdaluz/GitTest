// ClosuresAdvanced.swift
// Understanding and simplifying closures, capturing values,
// and using shorthand syntax with higher-order functions.

import Foundation

// 1. Closure as a parameter to a function
func performAction(with closure: () -> Void) {
    print("Before running closure...")
    closure()
    print("After running closure!")
}

performAction {
    print("👉 This is the closure being executed!")
}

// 2. Capturing values in a closure
func makeCounter() -> () -> Int {
    var count = 0

    let counter = {
        count += 1
        return count
    }

    return counter
}

let myCounter = makeCounter()
print(myCounter()) // 1
print(myCounter()) // 2
print(myCounter()) // 3

// 3. Using closures with collections (map, sorted)
let numbers = [3, 1, 4, 1, 5, 9]

// Full closure syntax
let sorted1 = numbers.sorted { (a: Int, b: Int) -> Bool in
    return a < b
}

// Simplified with type inference + implicit return
let sorted2 = numbers.sorted { a, b in
    a < b
}

// Most compact using shorthand argument names
let sorted3 = numbers.sorted { $0 < $1 }

print(sorted1)
print(sorted2)
print(sorted3)

// 4. map with a compact closure
let doubled = numbers.map { $0 * 2 }
print(doubled)
