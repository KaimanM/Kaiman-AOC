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

    // MARK: - DAY 4 -
    func test_day4_part1() {
        let input =
                """
                7,4,9,5,11,17,23,2,0,14,21,24,10,16,13,6,15,25,12,22,18,20,8,19,3,26,1

                22 13 17 11  0
                 8  2 23  4 24
                21  9 14 16  7
                 6 10  3 18  5
                 1 12 20 15 19

                 3 15  0  2 22
                 9 18 13 17  5
                19  8  7 25 23
                20 11 10 24  4
                14 21 16 12  6

                14 21 17 24  4
                10 16 15  9 19
                18  8 23 26 20
                22 11 13  6  5
                 2  0 12  3  7
                """

        XCTAssertEqual(Day4(input: input).part1(), 4512)
    }

    func test_day4_part2() {
        let input =
                """
                7,4,9,5,11,17,23,2,0,14,21,24,10,16,13,6,15,25,12,22,18,20,8,19,3,26,1

                22 13 17 11  0
                 8  2 23  4 24
                21  9 14 16  7
                 6 10  3 18  5
                 1 12 20 15 19

                 3 15  0  2 22
                 9 18 13 17  5
                19  8  7 25 23
                20 11 10 24  4
                14 21 16 12  6

                14 21 17 24  4
                10 16 15  9 19
                18  8 23 26 20
                22 11 13  6  5
                 2  0 12  3  7
                """

        XCTAssertEqual(Day4(input: input).part2(), 1924)
    }

    // MARK: - DAY 5 -
    func test_day5_part1() {
        let input =
                """
                0,9 -> 5,9
                8,0 -> 0,8
                9,4 -> 3,4
                2,2 -> 2,1
                7,0 -> 7,4
                6,4 -> 2,0
                0,9 -> 2,9
                3,4 -> 1,4
                0,0 -> 8,8
                5,5 -> 8,2
                """

        XCTAssertEqual(Day5(input: input).part1(), 5)
    }

    func test_day5_part2() {
        let input =
                """
                0,9 -> 5,9
                8,0 -> 0,8
                9,4 -> 3,4
                2,2 -> 2,1
                7,0 -> 7,4
                6,4 -> 2,0
                0,9 -> 2,9
                3,4 -> 1,4
                0,0 -> 8,8
                5,5 -> 8,2
                """

        XCTAssertEqual(Day5(input: input).part2(), 1924)
    }

    // MARK: - DAY 6 -
    func test_day6_part1() {
        let input =
                """
                3,4,3,1,2
                """

        XCTAssertEqual(Day6(input: input).part1(), 5934)
    }

    func test_day6_part2() {
        let input =
                """
                3,4,3,1,2
                """

        XCTAssertEqual(Day6(input: input).part2(), 26984457539)
    }

}
