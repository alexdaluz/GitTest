// NestedFunctions.swift
// Examples of functions inside other functions

import Foundation

// Basic nested function example
func greetUser(name: String) {
    // Nested helper function
    func createMessage(for user: String) -> String {
        return "Hello, \(user)! Welcome back."
    }

    let message = createMessage(for: name)
    print(message)
}

greetUser(name: "Alex")

// Nested function that is returned (captures a value)
func makeMultiplier(by factor: Int) -> (Int) -> Int {
    func multiply(number: Int) -> Int {
        return number * factor
    }
    return multiply
}

let double = makeMultiplier(by: 2)
print(double(5))  // 10
print(double(10)) // 20
