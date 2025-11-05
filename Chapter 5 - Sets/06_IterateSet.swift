// 06_IterateSet.swift
// Topic: Iterating (looping) through a Set

import Foundation

let favoriteFruits: Set<String> = ["Apple", "Mango", "Strawberry"]

for fruit in favoriteFruits {
    print("I like \(fruit)")
}

// If you need predictable order, iterate over a sorted view
for fruit in favoriteFruits.sorted() {
    print("Sorted fruit:", fruit)
}
