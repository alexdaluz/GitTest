// ClosuresBasics.swift
// Basic closure examples

import Foundation

// Closure stored in a constant
let sayHello = {
    print("Hello from a closure!")
}

sayHello()

// Closure with parameter and return value
let greetClosure: (String) -> String = { name in
    return "Hello, \(name)! Welcome to Swift (from a closure)."
}

let closureMessage = greetClosure("Alex")
print(closureMessage)

// Shorter closure syntax
let greetShort = { (name: String) in
    "Hi, \(name)! Nice to meet you!"
}

print(greetShort("Alex"))
