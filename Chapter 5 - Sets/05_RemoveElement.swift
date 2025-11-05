// 05_RemoveElement.swift
// Topic: Removing an element from a Set

import Foundation

var favoriteFruits: Set<String> = ["Apple", "Mango", "Strawberry"]

// Attempt to remove "Mango"
if let removedFruit = favoriteFruits.remove("Mango") {
    print("Removed: \(removedFruit)")
} else {
    print("Mango was not in the set.")
}

print("Updated set:", favoriteFruits)
