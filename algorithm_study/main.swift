//
//  main.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/05/02.
//

let N = Double(readLine()!)!

let scores = readLine()!.split(separator: " ").map { Double(String($0))! }

let max = scores.max()!

let result = ((scores.reduce(0, +) / max) * 100.0) / N

print(result)

