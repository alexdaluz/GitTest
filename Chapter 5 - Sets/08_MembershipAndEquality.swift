// 08_MembershipAndEquality.swift
// Topic: Membership checks and Set equality

import Foundation

let setA: Set<Int> = [1, 2, 3, 4]
let setB: Set<Int> = [3, 4]
let setC: Set<Int> = [4, 3, 2, 1] // same elements as setA, different order

// Membership (single value)
print("setA contains 2:", setA.contains(2))
print("setA contains 6:", setA.contains(6))

// Relationship checks
print("setB is subset of setA:", setB.isSubset(of: setA))
print("setA is superset of setB:", setA.isSuperset(of: setB))

// Equality ignores order
print("setA equals setC:", setA == setC)
