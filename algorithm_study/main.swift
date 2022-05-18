//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

var xPositions = [Int]()
var yPositions = [Int]()

(0..<3).forEach { _ in
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    xPositions.append(input[0])
    yPositions.append(input[1])
}

var targetX: Int = 0
var targetY: Int = 0

xPositions.forEach { x in
    if xPositions.filter({ $0 == x }).count == 1 {
        targetX = x
    }
}

yPositions.forEach { y in
    if yPositions.filter({ $0 == y }).count == 1 {
        targetY = y
    }
}

print(targetX, targetY)
