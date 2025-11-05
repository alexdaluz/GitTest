// 02_CheckCount.swift
// Topic: Checking the number of elements in a Dictionary

import Foundation

var countryCodes: [String: String] = [
    "US": "United States",
    "MX": "Mexico",
    "CA": "Canada"
]

let totalItems = countryCodes.count
print("The dictionary contains \(totalItems) items.")
