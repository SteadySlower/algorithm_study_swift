//
//  20221021.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/21.
//



//import Foundation
//
//let input = readLine()!.map { String($0) }.sorted()
//let length = input.count
//var visited = Array(repeating: false, count: length)
//var result = [[String]]()
//
//func isPalin(_ array: [String]) -> Bool {
//    for i in 0..<Int(array.count/2) {
//        if array[i] != array[array.count - i - 1] { return false }
//    }
//    return true
//}
//
//func dfs(now: [String], depth: Int) {
//    if !result.isEmpty { return }
//
//    if depth == length {
//        if isPalin(now) { result.append(now) }
//        return
//    }
//
//    for i in 0..<length {
//        if !visited[i] {
//            visited[i] = true
//            dfs(now: now + [input[i]], depth: depth + 1)
//            visited[i] = false
//        }
//    }
//}
//
//dfs(now: [], depth: 0)
//
//if !result.isEmpty {
//    print(result[0].reduce("", +))
//} else {
//    print("I'm Sorry Hansoo")
//}
