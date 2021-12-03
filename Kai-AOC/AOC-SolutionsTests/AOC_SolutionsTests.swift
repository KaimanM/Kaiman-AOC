//
//  AOC_SolutionsTests.swift
//  AOC-SolutionsTests
//
//  Created by Kaiman Mehmet on 01/12/2021.
//

import XCTest
@testable import AOC_Solutions

class AOC_SolutionsTests: XCTestCase {

    // MARK: - DAY 1 -
    func test_day1_part1() {
        let input =
                """
                199
                200
                208
                210
                200
                207
                240
                269
                260
                263
                """

        XCTAssertEqual(Day1(input: input).part1(), 7)
    }

    func test_day1_part2() {
        let input =
                """
                199
                200
                208
                210
                200
                207
                240
                269
                260
                263
                """

        XCTAssertEqual(Day1(input: input).part2(), 5)
    }
    
    // MARK: - DAY 2 -
    func test_day2_part1() {
        let input =
                """
                forward 5
                down 5
                forward 8
                up 3
                down 8
                forward 2
                """

        XCTAssertEqual(Day2(input: input).part1(), 150)
    }

    func test_day2_part2() {
        let input =
                """
                forward 5
                down 5
                forward 8
                up 3
                down 8
                forward 2
                """

        XCTAssertEqual(Day2(input: input).part2(), 900)
    }

    // MARK: - DAY 3 -
    func test_day3_part1() {
        let input =
                """
                00100
                11110
                10110
                10111
                10101
                01111
                00111
                11100
                10000
                11001
                00010
                01010
                """

        XCTAssertEqual(Day3(input: input).part1(), 198)
    }

    func test_day3_part2() {
        let input =
                """
                00100
                11110
                10110
                10111
                10101
                01111
                00111
                11100
                10000
                11001
                00010
                01010
                """

        XCTAssertEqual(Day3(input: input).part2(), 230)
    }

}
