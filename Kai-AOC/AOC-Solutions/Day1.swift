//
//  Day1.swift
//  Kai-AOC
//
//  Created by Kaiman Mehmet on 01/12/2021.
//

import Foundation

public final class Day1: Day {
    let input: [Int]

    public init(input: String) {
        let inputArray = input.components(separatedBy: "\n")
        self.input = inputArray.compactMap { Int($0) }
    }

    public func part1() -> Int {

        var increaseCount = 0
        var current = input[0]
        for index in 1..<input.count {
            if input[index] > current { increaseCount += 1}
            current = input[index]
        }
        
        return increaseCount
    }

    public func part2() -> Int {

        var increaseCount = 0
        var currentAvg = input[0] + input[1] + input[2]

        for index in 1..<input.count {
            if (index + 2) >= input.count { break }
            let newAvg = input[index] + input[index+1] + input[index+2]
            if newAvg > currentAvg { increaseCount += 1}
            currentAvg = newAvg
        }

        return increaseCount
    }
}
