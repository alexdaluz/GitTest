// 06_RemoveItem.swift
// Topic: Removing an item from a Dictionary

import Foundation

var countryCodes: [String: String] = [
    "US": "United States",
    "MX": "Mexico",
    "CA": "Canada"
]

countryCodes.removeValue(forKey: "MX")
print("After removing MX: \(countryCodes)")
