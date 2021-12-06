//
//  Day6.swift
//  AOC-Solutions
//
//  Created by Kaiman Mehmet on 06/12/2021.
//

import Foundation

public final class Day6: Day {
    let input: [Int]

    public init(input: String) {
        let inputArray = input.replacingOccurrences(of: "\n", with: "").components(separatedBy: ",")
        self.input = inputArray.compactMap { Int($0) }
    }

    public func part1() -> Int {
        var fish = [Int](repeating: 0, count: 9)
        input.forEach {
            fish[$0] += 1
        }
        fish = calculateSpawn(on: fish, for: 80)
        return fish.reduce(0, +)
    }

    public func part2() -> Int {
        var fish = [Int](repeating: 0, count: 9)
        input.forEach {
            fish[$0] += 1
        }
        fish = calculateSpawn(on: fish, for: 256)
        return fish.reduce(0, +)
    }

    func calculateSpawn(on: [Int], for days: Int) -> [Int] {
        var fish = on
        for _ in 0...days-1 {
            let newFishCount = fish[0]
            fish.removeFirst()
            fish.append(0)
            fish[6] = fish[6] + newFishCount
            fish[8] = newFishCount
        }
        return fish
    }
}

// initial impl for part 1

//public func part1() -> Int {
//
//    var fish = input
//    var result: [Int] = []
//
//    for _ in 0...79 {
//        result = fish
//        fish.enumerated().forEach { index, element in
//            if element == 0 {
//                result.append(8)
//                result[index] = 6
//            } else {
//                result[index] -= 1
//            }
//        }
//
//        fish = result
//    }
//
//
//    return fish.count
//}
