//
//  Day.swift
//  Kai-AOC
//
//  Created by Kaiman Mehmet on 01/12/2021.
//

import Foundation

public protocol Day {
    init(input: String)
    func part1() -> Int
    func part2() -> Int
}
