//
//  Day4.swift
//  AOC-Solutions
//
//  Created by Kaiman Mehmet on 09/12/2021.
//

import Foundation

public final class Day4: Day {
    let input: [String]
    let gameNumbers: [Int]
    var boards: [[Int]] = []

    public init(input: String) {
        self.input = input.components(separatedBy: "\n")
        self.gameNumbers = self.input
            .first!
            .components(separatedBy: ",")
            .compactMap { Int($0) }

        var tempBoard: [Int] = []
        for i in 2..<self.input.count {
            let line = self.input[i]
                .components(separatedBy: " ")
                .compactMap { $0.isEmpty ? nil : $0 }

            print("line: ", line)
            if line.isEmpty {
                boards.append(tempBoard)
                tempBoard.removeAll()
            } else if i == self.input.count-1 {
                line.forEach { tempBoard.append(Int($0)!) }
                boards.append(tempBoard)
            }
            else {
                line.forEach { tempBoard.append(Int($0)!) }
            }
        }

        print(boards)
    }

    public func part1() -> Int {
        for number in gameNumbers {
            for i in 0..<boards.count {
                if boards[i].contains(number) {
                    boards[i][boards[i].firstIndex(of: number)!] = -1
                    if checkForWin(on: boards[i]) {
                        print("@@@@ ENDED ON NUMBER :", number)
                        printBoard(boards[i])
                        let value = boards[i].compactMap {
                            $0 == -1 ? nil : $0
                        }
                            .reduce(0, +)

                        return value*number
                    }
                }
            }

            print("@@@@@")
            print("After \(number) was called the boards are: ")
            for (n, board) in boards.enumerated() {
                print("BOARD ", n)
                printBoard(board)
            }
        }

        return -1
    }

    func checkForWin(on board: [Int]) -> Bool {
        return checkRows(on: board) || checkColumns(on: board)
    }

    func checkRows(on board: [Int]) -> Bool {
    print("check rows called")
        return board[0...4].allSatisfy({ $0 == -1}) ||
        board[5...9].allSatisfy({ $0 == -1}) ||
        board[10...14].allSatisfy ({ $0 == -1}) ||
        board[15...19].allSatisfy ({ $0 == -1}) ||
        board[20...24].allSatisfy ({ $0 == -1})
    }

    func checkColumns(on board: [Int]) -> Bool {
        print("check cols called")
        let indexes = [0, 5, 10, 15, 20,
                       1, 6, 11, 16, 21,
                       2, 7, 12, 17, 22,
                       3, 8, 13, 18, 23,
                       4, 9, 14, 19, 24]
        let tempBoard = indexes.map { board[$0] }
        return checkRows(on: tempBoard)
    }

    func checkDiag(on board: [Int]) -> Bool {
        print("check diag called")
        let cross1 = [0, 6, 12, 18, 24].map { board[$0] }.allSatisfy({ $0 == -1})
        let cross2 = [4, 8, 12, 16, 20].map { board[$0] }.allSatisfy({ $0 == -1})
        return cross1 || cross2
    }

    func printBoard(_ board: [Int]) {
        print(board[0...4])
        print(board[5...9])
        print(board[10...14])
        print(board[15...19])
        print(board[20...24])
    }

    public func part2() -> Int {
        var boardsCopy = boards
        for number in gameNumbers {
            for i in 0..<boardsCopy.count {
                if boardsCopy[i].contains(number) {
                    boardsCopy[i][boardsCopy[i].firstIndex(of: number)!] = -1
                    if checkForWin(on: boardsCopy[i]) && boardsCopy.count != 1 {
                        print("@@@@ ENDED ON NUMBER :", number)
                        printBoard(boards[i])
                        let value = boards[i].compactMap {
                            $0 == -1 ? nil : $0
                        }
                            .reduce(0, +)

                        return value*number
                    } else if checkForWin(on: boardsCopy[i]) {
                        print("REMOVING BOARD: ", i)
                        boardsCopy.remove(at: i)
                    }
                }
            }

            print("@@@@@")
            print("After \(number) was called the boards are: ")
            for (n, board) in boards.enumerated() {
                print("BOARD ", n)
                printBoard(board)
            }
        }
        return -1
    }
}
