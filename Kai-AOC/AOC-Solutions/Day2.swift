//
//  Day2.swift
//  AOC-Solutions
//
//  Created by Kaiman Mehmet on 02/12/2021.
//

import Foundation

public final class Day2: Day {
    let input: [String]

    public init(input: String) {
        self.input = input.components(separatedBy: "\n")
    }

    public func part1() -> Int {
        var horizontal = 0
        var vertical = 0
        input.forEach { movement in
            let command = movement.components(separatedBy: " ")
            switch command[0] {
            case "forward":
                horizontal += Int(command[1])!
            case "down":
                vertical += Int(command[1])!
            case "up":
                vertical -= Int(command[1])!
            default:
                break
            }
        }
        return horizontal*vertical
    }

    public func part2() -> Int {
        var horizontal = 0
        var vertical = 0
        var aim = 0
        input.forEach { movement in
            let command = movement.components(separatedBy: " ")
            switch command[0] {
            case "forward":
                horizontal += Int(command[1])!
                vertical += (aim*Int(command[1])!)
            case "down":
                aim += Int(command[1])!
            case "up":
                aim -= Int(command[1])!
            default:
                break
            }
        }
        return horizontal*vertical
    }
}
