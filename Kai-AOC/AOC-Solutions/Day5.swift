//
//  Day5.swift
//  AOC-Solutions
//
//  Created by Kaiman Mehmet on 10/12/2021.
//

import Foundation

public final class Day5: Day {
    var input: [String]


    public init(input: String) {
        self.input = input.components(separatedBy: "\n")
        self.input.removeLast()
    }

    public func part1() -> Int {

        var points: [(x: Int, y: Int)] = []
        var maxX: Int = 0
        var maxY: Int = 0

        for line in self.input {
            let pairs = line.components(separatedBy: " -> ")
            let start = (x: Int(pairs[0].components(separatedBy: ",")[0])!,
                         y: Int(pairs[0].components(separatedBy: ",")[1])!)
            let end = (x: Int(pairs[1].components(separatedBy: ",")[0])!,
                       y: Int(pairs[1].components(separatedBy: ",")[1])!)


            maxX = start.x > maxX ? start.x : maxX
            maxX = end.x > maxX ? end.x : maxX
            maxY = start.y > maxY ? start.y : maxY
            maxY = end.y > maxY ? end.y : maxY

            if start.x == end.x {
                let startRange = start.y > end.y ? end.y : start.y
                let endRange = start.y > end.y ? start.y : end.y
                for y in startRange...endRange {
                    points.append((x: start.x, y: y))
                }
            }

            if start.y == end.y {
                let startRange = start.x > end.x ? end.x : start.x
                let endRange = start.x > end.x ? start.x : end.x
                for x in startRange...endRange {
                    points.append((x: x, y: start.y))
                }
            }
            print("start: \(start), end: \(end)")
        }

        var map: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: maxX+1), count: maxY+1)

        var highest = 0
        points.forEach {
            map[$0.y][$0.x] += 1
            highest = map[$0.y][$0.x] > highest ? map[$0.y][$0.x] : highest
        }

        var score = 0
        for row in map {
            for column in row {
                if column > 1 { score += 1}
            }
        }

        return score
    }

    public func part2() -> Int {
        var points: [(x: Int, y: Int)] = []
        var maxX: Int = 0
        var maxY: Int = 0

        for line in self.input {
            let pairs = line.components(separatedBy: " -> ")
            let start = (x: Int(pairs[0].components(separatedBy: ",")[0])!,
                         y: Int(pairs[0].components(separatedBy: ",")[1])!)
            let end = (x: Int(pairs[1].components(separatedBy: ",")[0])!,
                       y: Int(pairs[1].components(separatedBy: ",")[1])!)


            maxX = start.x > maxX ? start.x : maxX
            maxX = end.x > maxX ? end.x : maxX
            maxY = start.y > maxY ? start.y : maxY
            maxY = end.y > maxY ? end.y : maxY

            if start.x == end.x {
                let startRange = start.y > end.y ? end.y : start.y
                let endRange = start.y > end.y ? start.y : end.y
                for y in startRange...endRange {
                    points.append((x: start.x, y: y))
                }
            } else if start.y == end.y {
                let startRange = start.x > end.x ? end.x : start.x
                let endRange = start.x > end.x ? start.x : end.x
                for x in startRange...endRange {
                    points.append((x: x, y: start.y))
                }
            }
            else if abs(start.x - end.x) == abs(start.y - end.y) {

                for x in stride(from: start.x, to: end.x, by: 1) {
                    print("xd")
                }
            }
            print("start: \(start), end: \(end)")
        }

        var map: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: maxX+1), count: maxY+1)

        var highest = 0
        points.forEach {
            map[$0.y][$0.x] += 1
            highest = map[$0.y][$0.x] > highest ? map[$0.y][$0.x] : highest
        }

        var score = 0
        for row in map {
            for column in row {
                if column > 1 { score += 1}
            }
        }

        print("@@@@")
        for row in map {
            print(row)
        }

        return score
    }
}
