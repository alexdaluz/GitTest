// 07_SetOperations.swift
// Topic: Union, intersection, subtracting, symmetric difference

import Foundation

let fruitsA: Set<String> = ["Apple", "Banana", "Mango"]
let fruitsB: Set<String> = ["Mango", "Orange", "Pineapple"]

print("Set A:", fruitsA)
print("Set B:", fruitsB)

let unionSet = fruitsA.union(fruitsB)
print("Union:", unionSet)

let intersectionSet = fruitsA.intersection(fruitsB)
print("Intersection:", intersectionSet)

let subtractingSet = fruitsA.subtracting(fruitsB)
print("A subtracting B:", subtractingSet)

let symmetricDiff = fruitsA.symmetricDifference(fruitsB)
print("Symmetric Difference:", symmetricDiff)
