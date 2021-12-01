//
//  AOC_SolutionsTests.swift
//  AOC-SolutionsTests
//
//  Created by Kaiman Mehmet on 01/12/2021.
//

import XCTest
@testable import AOC_Solutions

class AOC_SolutionsTests: XCTestCase {

    func test_day1_part1() {
        let input =
        [
            199,
            200,
            208,
            210,
            200,
            207,
            240,
            269,
            260,
            263
        ]

        XCTAssertEqual(Day1().part1(input: input), 7)
    }

    func test_day1_part2() {
        let input =
        [
            199,
            200,
            208,
            210,
            200,
            207,
            240,
            269,
            260,
            263
        ]

        XCTAssertEqual(Day1().part2(input: input), 5)
    }

}
