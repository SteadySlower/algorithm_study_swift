//
//  20220907.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/09/07.
//

//func solution(_ input_array:[String]) -> Int {
//    // 점화식 함수
//    func f(_ i: Int, _ j: Int) {
//        var maxResult = Int.min
//        var minResult = Int.max
//
//        for x in i..<j {
//            let oper = input_array[x * 2 + 1]
//            switch oper {
//            case "+":
//                maxResult = max(maxMatrix[i][x] + maxMatrix[x + 1][j], maxResult)
//                minResult = min(minMatrix[i][x] + minMatrix[x + 1][j], minResult)
//            case "-":
//                maxResult = max(maxMatrix[i][x] - minMatrix[x + 1][j], maxResult)
//                minResult = min(minMatrix[i][x] - maxMatrix[x + 1][j], minResult)
//            default:
//                fatalError()
//            }
//        }
//
//        maxMatrix[i][j] = maxResult
//        minMatrix[i][j] = minResult
//    }
//
//    // 숫자만 골라서 배열에 넣기
//    var nums = [Int]()
//    for i in stride(from: 0, to: input_array.count, by: 2) {
//        nums.append(Int(input_array[i])!)
//    }
//
//    // DP : 최댓값, 최솟값 따로
//    var maxMatrix = Array(repeating: Array(repeating: 0, count: nums.count), count: nums.count)
//    var minMatrix = Array(repeating: Array(repeating: 0, count: nums.count), count: nums.count)
//
//    // 초기값 넣기
//    for i in 0..<nums.count {
//        maxMatrix[i][i] = nums[i]
//        minMatrix[i][i] = nums[i]
//    }
//
//    // k = j - i의 값
//    for k in 1..<nums.count {
//        for i in 0..<nums.count {
//            let j = i + k
//            guard j < nums.count else { break }
//            f(i, j)
//        }
//    }
//
//    // 최대값 리턴
//    return maxMatrix[0][nums.count - 1]
//}
//
//func prettyPrint(matrix: [[Int]]) {
//    for matrix in matrix {
//        print(matrix)
//    }
//}
//
//print(solution(["1", "-", "3", "+", "5", "-", "8"]))

/*

 # : 연산을 의미
 
 의미
 f(i, j) = i에서 j까지 연산했을 때 최댓값
 
 초기값
 f(i, i) = num[i]
 
 점화식
 f(i, j) = max(
    f(i, i) # f(i + 1, j),
    f(i, i + 1) # f(i + 2, j),
    f(i, i + 2) # f(i + 3, j),
    ...
    f(i, j - 1) # f(j , j)
 )
 
 */
