//
//  Day3.swift
//  AOC-Solutions
//
//  Created by Kaiman Mehmet on 03/12/2021.
//

import Foundation

public final class Day3: Day {
    let input: [String]

    public init(input: String) {
        self.input = input.components(separatedBy: "\n").filter({ !$0.isEmpty })

    }

    public func part1() -> Int {
        var result = [Int](repeating: 0, count: input[0].count)
        input.forEach { line in
            line.enumerated().forEach { result[$0] += ($1 == "0" ? -1 : 1) }
        }

        let gamma = result.map { $0 < 0 ? "0" : "1" }.joined()
        let epsilon = result.map { $0 < 0 ? "1" : "0" }.joined()

        return Int(gamma, radix: 2)! * Int(epsilon, radix: 2)!
    }

    public func part2() -> Int {
        var filteredInput: [String] = input
        var currentIndex = 0

        while filteredInput.count > 1 {
            var record = 0
            filteredInput.forEach { record += (Array($0)[currentIndex] == "0" ? -1 : 1) }
            filteredInput = filteredInput.filter { Array($0)[currentIndex] == (record >= 0 ? "1" : "0") }
            print(filteredInput)
            currentIndex += 1
        }

        print(filteredInput)

        guard let oxygenInput = Int(filteredInput[0], radix: 2) else { return -1 }
        print(oxygenInput)

        // ---

        filteredInput = input
        currentIndex = 0

        while filteredInput.count > 1 {
            var record = 0
            filteredInput.forEach { record += (Array($0)[currentIndex] == "0" ? 1 : -1) }
            filteredInput = filteredInput.filter { Array($0)[currentIndex] == (record <= 0 ? "0" : "1") }
            print(filteredInput)
            currentIndex += 1
        }

        guard let co2 = Int(filteredInput[0], radix: 2) else { return -1 }
        print(co2)

        return co2*oxygenInput
    }
}
