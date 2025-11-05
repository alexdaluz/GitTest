// 03_AddItem.swift
// Topic: Adding a new item to a Dictionary

import Foundation

var countryCodes: [String: String] = [
    "US": "United States",
    "MX": "Mexico",
    "CA": "Canada"
]

// Add a new item
countryCodes["BR"] = "Brazil"
print("After adding BR: \(countryCodes)")
