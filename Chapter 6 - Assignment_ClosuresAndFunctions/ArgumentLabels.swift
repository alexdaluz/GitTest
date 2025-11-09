// ArgumentLabels.swift
// Using custom and omitted argument labels

import Foundation

// Default argument label
func greet(name: String) {
    print("Hello, \(name)!")
}

greet(name: "Alex")

// Custom external label, different internal name
func greet(person name: String) {
    print("Hello again, \(name)!")
}

greet(person: "Alex")

// No external label using underscore
func greet(_ name: String) {
    print("Hey, \(name)! No label needed.")
}

greet("Alex")

// Multiple labeled parameters
func makeCoffee(for person: String, size: String, withSugar sugar: Bool) {
    let sugarText = sugar ? "with sugar" : "without sugar"
    print("Making a \(size) coffee for \(person) \(sugarText).")
}

makeCoffee(for: "Alex", size: "large", withSugar: true)
