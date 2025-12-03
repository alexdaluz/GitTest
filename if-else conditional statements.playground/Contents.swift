import UIKit
//
//  IfElseExamples.swift
//  SwiftBasics
//
//  Created by Alexander Da Luz on 12/3/2025.
//

import Foundation

// Example 1 — Simple If/Else
func checkAge(_ age: Int) {
    if age >= 18 {
        print("You are an adult.")
    } else {
        print("You are a minor.")
    }
}

// Example 2 — If / Else If / Else chain
func gradeFromScore(_ score: Int) {
    if score >= 90 {
        print("Grade: A")
    } else if score >= 80 {
        print("Grade: B")
    } else if score >= 70 {
        print("Grade: C")
    } else if score >= 60 {
        print("Grade: D")
    } else {
        print("Grade: F")
    }
}

// Example 3 — Checking multiple conditions
func checkTemperature(_ temp: Int) {
    if temp > 100 {
        print("It’s extremely hot outside!")
    } else if temp > 80 {
        print("It’s warm outside.")
    } else if temp > 60 {
        print("It’s mild outside.")
    } else {
        print("It’s cold outside.")
    }
}

// Example 4 — Boolean condition
func isLoggedIn(_ username: String?) {
    if let name = username {
        print("Welcome back, \(name)!")
    } else {
        print("Please log in.")
    }
}

// Example 5 — Using && (AND) and || (OR)
func checkLogin(username: String?, password: String?) {
    if username == "alex" && password == "1234" {
        print("Login successful!")
    } else if username == nil || password == nil {
        print("Missing username or password.")
    } else {
        print("Invalid credentials.")
    }
}

// Running our functions for demonstration:
checkAge(20)
gradeFromScore(85)
checkTemperature(75)
isLoggedIn("Alexander")
checkLogin(username: "alex", password: "1234")

