// 04_CheckMembership.swift
// Topic: Checking membership with contains(_:)

import Foundation

let favoriteFruits: Set<String> = ["Apple", "Mango", "Strawberry"]

if favoriteFruits.contains("Mango") {
    print("Mango is one of your favorite fruits!")
} else {
    print("Mango is not in the set.")
}
