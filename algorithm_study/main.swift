//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

/*
 문제가 너무 막막할 때는 작은 조각으로 나누어서 구현하자!
 다 구해놓고 세려고 하지말고 세면서 구하자!
 */

// 탈출

typealias Position = (r: Int, c: Int, d: Int)

struct Queue {
    var queue = [Position]()
    var index = 0
    
    var isEmpty: Bool {
        return queue.count - index == 0 ? true : false
    }
    
    mutating func push(_ p: Position) {
        queue.append(p)
    }
    
    mutating func pop() -> Position {
        defer {
            index += 1
        }
        return queue[index]
    }
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let R = input[0], C = input[1]
var matrix = [[Character]]()
var check = Array(repeating: Array(repeating: false, count: C), count: R)

let dr = [1, -1, 0, 0]
let dc = [0, 0, 1, -1]

for _ in 0..<R {
    matrix.append(readLine()!.map{ $0 })
}

func isValid(_ r: Int, _ c: Int) -> Bool {
    return r >= 0 && r < R && c >= 0 && c < C && matrix[r][c] == "." ? true : false
}

func bfs(_ start: Position) {
    var queue = Queue()
    queue.push(start)
    check[start.r][start.c] = true
    
    while !queue.isEmpty {
        let p = queue.pop()
        if matrix[p.r][p.c] == "D" {
            print(p.d)
            return
        }
        for i in 0..<4 {
            let nr = p.r + dr[i]
            let nc = p.c + dc[i]
        }
    }
}

