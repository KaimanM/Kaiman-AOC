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
        var array = [Int](repeating: 0, count: input[0].count)
        input.forEach { line in
            line.enumerated().forEach { index, element in
                if let binary = Int(String(element)) {
                    switch binary {
                    case 0:
                        array[index] -= 1
                    case 1:
                        array[index] += 1
                    default:
                        break
                    }
                }
            }
        }

        let gamma = array.map { num -> String in
            if (num < 0) { return "0" } else { return "1" }
        }.joined()

        let epsilon = array.map { num -> String in
            if (num < 0) { return "1" } else { return "0" }
        }.joined()

        guard let gammaDecimal = Int(gamma, radix: 2),
              let epsilonDecimal = Int(epsilon, radix: 2) else {
                  return -1
              }

        return gammaDecimal * epsilonDecimal
    }

    public func part2() -> Int {

        var filteredInput: [String] = input
        var currentIndex = 0

        while filteredInput.count > 1 {
            var record = 0
            filteredInput.forEach { line in
                switch Array(line)[currentIndex] {
                case "0":
                    record -= 1
                default:
                    record += 1
                }
            }

            print(record)
            switch record {
            case _ where record < 0:
                filteredInput = filteredInput.filter { Array($0)[currentIndex] == "0" }
            case _ where record > 0:
                filteredInput = filteredInput.filter { Array($0)[currentIndex] == "1" }
            default:
                filteredInput = filteredInput.filter { Array($0)[currentIndex] == "1" }
            }

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
            filteredInput.forEach { line in
                switch Array(line)[currentIndex] {
                case "0":
                    record += 1
                default:
                    record -= 1
                }


            }

            print(record)
            switch record {
            case _ where record < 0:
                filteredInput = filteredInput.filter { Array($0)[currentIndex] == "0" }
            case _ where record > 0:
                filteredInput = filteredInput.filter { Array($0)[currentIndex] == "1" }
            default:
                filteredInput = filteredInput.filter { Array($0)[currentIndex] == "0" }
            }

            print(filteredInput)
            currentIndex += 1
        }

        guard let co2 = Int(filteredInput[0], radix: 2) else { return -1 }
        print(co2)

        return co2*oxygenInput
    }
}
