// GuardStatements.swift
// Using 'guard' to exit early from functions

import Foundation

// Example 1: guard with optional
func greetUser(name: String?) {
    guard let name = name else {
        print("No name provided! Exiting early.")
        return
    }

    print("Hello, \(name)! Welcome back.")
}

greetUser(name: "Alex")
greetUser(name: nil)

// Example 2: multiple guard checks
func registerUser(username: String?, password: String?) {
    guard let username = username, !username.isEmpty else {
        print("Username is missing.")
        return
    }
    guard let password = password, password.count >= 6 else {
        print("Password must be at least 6 characters.")
        return
    }

    print("✅ User \(username) registered successfully!")
}

registerUser(username: "Alex", password: "123456")
registerUser(username: "", password: "123")
