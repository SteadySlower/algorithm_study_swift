//
//  20230711.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/11.
//

//func solution(_ n:Int, _ info:[Int]) -> [Int] {
//
//    var arrow = n
//    var result = Array(repeating: 0, count: 11)
//    var ryan = 0
//    var apeach = 0
//    var ans = [-1]
//    var scoreGap = 1
//
//    func dfs(index: Int) {
//        if arrow == 0 {
//            for i in index..<11 {
//                if info[i] != 0 { apeach += 10 - i }
//            }
//
//            if ryan - apeach >= scoreGap {
//                ans = result
//                scoreGap = ryan - apeach
//            }
//
//            for i in index..<11 {
//                if info[i] != 0 { apeach -= 10 - i }
//            }
//
//            return
//
//        }
//
//        // 마지막에 왔을 때 화살 남은거 처리하는 로직
//            // 마지막 과녁 0점이니까 그냥 쏘면 됨
//        if index == 11 {
//
//            result[10] += arrow
//
//            if ryan - apeach >= scoreGap {
//                ans = result
//                scoreGap = ryan - apeach
//            }
//
//            result[10] -= arrow
//
//            return
//        }
//
//        // 현재 과녁에서 이기는 경우
//        if arrow >= info[index] + 1 {
//            arrow -= info[index] + 1
//            ryan += 10 - index
//            result[index] = info[index] + 1
//            dfs(index: index + 1)
//            arrow += info[index] + 1
//            ryan -= 10 - index
//            result[index] = 0
//        }
//
//        // 현재 과녁에서 지는 경우
//        apeach += 10 - index
//        dfs(index: index + 1)
//        apeach -= 10 - index
//
//    }
//
//    dfs(index: 0)
//
//    return ans
//}
//
//print(solution(5, [2,1,1,1,0,0,0,0,0,0,0]))
