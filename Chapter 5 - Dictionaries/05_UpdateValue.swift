// 05_UpdateValue.swift
// Topic: Assigning a new value to an existing key

import Foundation

var countryCodes: [String: String] = [
    "US": "United States",
    "MX": "Mexico",
    "CA": "Canada"
]

countryCodes["US"] = "United States of America"
print("After updating US: \(countryCodes)")
