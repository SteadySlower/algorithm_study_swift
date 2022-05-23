//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

// 체스판 다시 칠하기

//extension Character {
//    func changeColor() -> Character {
//        return self == "B" ? "W" : "B"
//    }
//}

typealias Board = Array<Array<Character>>

let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = nums[0], M = nums[1]
var input = [Array<Character>]()

for _ in 0..<N {
    let line = readLine()!.map { $0 }
    input.append(line)
}

func countRepaint(board: Board) -> Int {
    var result1 = 0
    var result2 = 0
    for i in 0..<8 {
        for j in 0..<8 {
            if (i + j) % 2 == 0 {
                if board[i][j] == "B" {
                    result1 += 1
                } else {
                    result2 += 1
                }
            } else {
                if board[i][j] == "W" {
                    result1 += 1
                } else {
                    result2 += 1
                }
            }
        }
    }
    return min(result1, result2)
}

func getBoard(x: Int, y: Int) -> Board {
    var board = [Array<Character>]()
    for i in 0..<8 {
        board.append(Array(input[x + i][y..<y+8]))
    }
    return board
}

var result = 64

for x in 0..<(N-7) {
    for y in 0..<(M-7) {
        let board = getBoard(x: x, y: y)
        result = min(result, countRepaint(board: board))
    }
}

print(result)
