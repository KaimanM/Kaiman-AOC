//
//  main.swift
//  Kai-AOC
//
//  Created by Kaiman Mehmet on 30/11/2021.
//

import Foundation

final class Kai_AOC {

    init() {
        let input = fetchInput(for: 1)

//        let input: String? =
//                    """
//                    199
//                    200
//                    208
//                    210
//                    200
//                    207
//                    240
//                    269
//                    260
//                    263
//                    """

        if let input = input {
            let inputArray = input.components(separatedBy: "\n")
            let inputs = inputArray.compactMap { Int($0) }
            print("Answer for part 1", Day1().part1(input: inputs))
            print("Answer for part 2", Day1().part2(input: inputs))
        }

    }

    func fetchInput(for day: Int) -> String? {
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let folderPath = documentsPath.appendingPathComponent("AOC2021")
        let filePath = folderPath.appendingPathComponent("day\(day).txt").path

        if FileManager.default.fileExists(atPath: filePath) {
            print("File downloaded")
            return try? String(contentsOfFile: filePath)
        } else {
            return downloadInput(for: day)
        }
    }

    func downloadInput(for day: Int) -> String? {
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let FolderPath = documentsPath.appendingPathComponent("AOC2021")

        let url = URL(string: "https://adventofcode.com/2021/day/\(day)/input")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("session=53616c7465645f5f300f87a9996d105635f570bf8a7bf66ba20260083eb137a06217d2e270e4f0396634e57b71ded873",
                         forHTTPHeaderField: "Cookie")
        request.httpShouldHandleCookies = true


        try? FileManager.default.createDirectory(atPath: FolderPath.path, withIntermediateDirectories: true, attributes: nil)

        let sema = DispatchSemaphore(value: 0)
        var input: String?
        let task = URLSession(configuration: .ephemeral).dataTask(with: request) { data, response, error in
            print("did fetch data")
            try? String(data: data!, encoding: .utf8)?.write(to: FolderPath.appendingPathComponent("day\(day).txt"),
                                                             atomically: true,
                                                             encoding: .utf8)
            input = String(data: data!, encoding: .utf8)
            sema.signal()
        }

        task.resume()

        sema.wait()

        return input
    }

}


_ = Kai_AOC()
