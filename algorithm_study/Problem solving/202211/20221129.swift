//
//  20221129.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/12/01.
//

//func solution(_ arr:[[Int]]) -> [Int] {
//    var arr = arr
//
//    func isCompressable(_ i: Int, _ j: Int, _ size: Int) -> Bool {
//        let num = arr[i][j]
//        if num == -1 { return false }
//
//        for x in i..<(i + size) {
//            for y in j..<(j + size) {
//                if arr[x][y] != num { return false }
//            }
//        }
//
//        for x in i..<(i + size) {
//            for y in j..<(j + size) {
//                arr[x][y] = -1
//            }
//        }
//
//
//        return true
//    }
//
//    var zero = 0
//    var one = 0
//    for i in 0..<arr.count {
//        for j in 0..<arr.count {
//            if arr[i][j] == 0 {
//                zero += 1
//            } else {
//                one += 1
//            }
//        }
//    }
//
//    var size
//
//
//
//    return [zero, one]
//}

//func solution(_ arr:[[Int]]) -> [Int] {
//    func isCompressable(_ arr: [[Int]]) -> Bool {
//        let num = arr[0][0]
//
//        for i in 0..<arr.count {
//            for j in 0..<arr.count {
//                if arr[i][j] != num { return false }
//            }
//        }
//
//        return true
//    }
//
//    func slice(_ arr: [[Int]], _ i: Int, _ j: Int) -> [[Int]] {
//        let size = arr.count / 2
//        var result = [[Int]]()
//        var arr = arr[size * i..<size * (i + 1)]
//        for line in arr {
//            result.append(Array(line[size * j..<size * (j + 1)]))
//        }
//        return result
//    }
//
//    func sol(_ arr: [[Int]]) -> [Int] {
//        var result = [0, 0]
//
//        if arr.count == 1 {
//            let num = arr[0][0]
//            result[num] += 1
//            return result
//        }
//
//        if isCompressable(arr) {
//            let num = arr[0][0]
//            result[num] += 1
//            return result
//        } else {
//            let size = arr.count / 2
//            for i in 0..<2 {
//                for j in 0..<2 {
//                    let sliceResult = sol(slice(arr, i, j))
//                    result[0] += sliceResult[0]
//                    result[1] += sliceResult[1]
//                }
//            }
//        }
//
//        return result
//    }
//
//    return sol(arr)
//}
//
//print(solution([[1,1,0,0],[1,0,0,0],[1,0,0,1],[1,1,1,1]]))
