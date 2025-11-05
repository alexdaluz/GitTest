// 07_IterateDictionary.swift
// Topic: Iterating over a Dictionary (key/value pairs)

import Foundation

let countryCodes: [String: String] = [
    "US": "United States",
    "MX": "Mexico",
    "CA": "Canada"
]

for (code, country) in countryCodes {
    print("\(code): \(country)")
}
