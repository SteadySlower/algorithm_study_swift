//
//  20230412.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/04/12.
//

//func solution(_ sequence:[Int], _ k:Int) -> [Int] {
//
//    var matrix = Array(repeating: Array(repeating: 0, count: sequence.count), count: sequence.count)
//
//    for i in 0..<sequence.count {
//        matrix[i][i] = sequence[i]
//        if matrix[i][i] == k {
//            return [i, i]
//        }
//    }
//
//    for length in 2...sequence.count {
//        for i in 0..<(sequence.count - length) {
//            let j = i + length - 1
//            matrix[i][j] = matrix[i][j - 1] + matrix[j][j]
//            if matrix[i][j] == k {
//                return [i, j]
//            }
//        }
//    }
//
//    return []
//}


//func solution(_ sequence:[Int], _ k:Int) -> [Int] {
//
//    // 투 포인터: 시작 인덱스, 끝 인덱스
//    var s = 0
//    var e = 0
//    // 부분합
//    var sum = sequence[0]
//
//    // 정답: [s, e, 길이]
//    var ans = [s, e, sequence.count + 1]
//
//    // 정답을 업데이트 하는 함수
//    func updateAns(_ s: Int, _ e: Int) {
//        // 현재 정답보다 길이가 짧다면 업데이트
//            // 길이가 같다면 업데이트 하면 안됨 = 인덱스가 앞쪽에 온 부분수열이 우선하므로
//        if e - s + 1 < ans[2] {
//            ans = [s, e, e - s + 1]
//        }
//    }
//
//    while true {
//        // 부분합이 k와 같다면 -> 정답 업데이트
//        if sum == k {
//            updateAns(s, e)
//            // 시작 인덱스 +1해서 다른 수열 구하기
//            sum -= sequence[s]
//            s += 1
//        // 부분합이 k보다 작을 경우 -> 끝나는 인덱스 +1
//        } else if sum < k {
//            e += 1
//            // 반복문 종료 조건
//            if e == sequence.count || sequence[e] > k { break }
//            sum += sequence[e]
//        // 부분합이 k보다 클 경우 -> 시작하는 인덱스 +1
//        } else {
//            sum -= sequence[s]
//            s += 1
//        }
//    }
//
//    // 정답에서 길이는 제외하고 반환
//    return ans.dropLast()
//}
//
//print(solution([1, 2, 3, 4, 5], 7))
//print(solution([1, 1, 1, 2, 3, 4, 5], 5))
//print(solution([2, 2, 2, 2, 2], 6))
