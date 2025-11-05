// 04_AccessElement.swift
// Topic: Accessing a value from a Dictionary safely

import Foundation

let countryCodes: [String: String] = [
    "US": "United States",
    "MX": "Mexico",
    "CA": "Canada"
]

if let country = countryCodes["US"] {
    print("The key 'US' represents: \(country)")
} else {
    print("Key not found in the dictionary.")
}
