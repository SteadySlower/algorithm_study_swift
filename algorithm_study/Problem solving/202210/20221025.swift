//
//  20221025.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/25.
//

//func solution(_ land:[[Int]]) -> Int {
//    // land를 복사해서 dp에 활용
//    var dp = land
//
//    // i행의 j열을 밟았을 때의 최댓값
//        //👉 i - 1행의 j열을 제외한 열을 밟았을 때의 점수 중에 최댓값을 i열 j행의 점수와 더한다
//    for i in 1..<dp.count {
//        for j in 0..<4 {
//            // j을 제외한 밟을 수 있는 열 구하기
//            var steppable = [Int]()
//            for k in 0..<4 {
//                if k != j { steppable.append(k) }
//            }
//            // 밟을 수 있는 열 중에서 가장 큰 점수 더하기
//            dp[i][j] += max(dp[i - 1][steppable[0]], dp[i - 1][steppable[1]], dp[i - 1][steppable[2]])
//        }
//    }
//
//    // 마지막 행의 누적된 점수 중에 최댓값을 리턴한다.
//    return dp[dp.count - 1].max()!
//}
//
//func solution(_ skill:String, _ skill_trees:[String]) -> Int {
//
//    var count = 0
//
//    // tree에서 순서가 정해진 skill을 제외한 결과가 가능한 모든 case와 동일한지 확인
//    for tree in skill_trees {
//        let tree = tree.filter { skill.contains($0) }
//        if skill.prefix(tree.count) == tree { count += 1 }
//    }
//
//    return count
//}
//
//print(solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"]))
