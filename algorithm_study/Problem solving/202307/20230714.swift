//
//  20230714.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/14.
//

//func solution(_ n:Int, _ info:[Int]) -> [Int] {
//
//    // 라이언과 어피치의 점수 차이를 구하는 함수
//        // 라이언이 높으면 점수를 리턴
//        // 어피치가 높으면 nil을 리턴
//    func getScoreGap(ryan: [Int]) -> Int? {
//        var ryanScore = 0
//        var apeachScore = 0
//
//        for i in 0..<11 {
//            // 해당 점수에 모두 화살 0개인 경우는 점수 추가 없음
//            if ryan[i] == 0 && info[i] == 0 {
//                continue
//            }
//
//            // 과녁에 쏜 사람 있으면 더 많이 쏜 사람에게 점수 추가
//            if ryan[i] > info[i] {
//                ryanScore += 10 - i
//            } else {
//                apeachScore += 10 - i
//            }
//        }
//
//        return ryanScore > apeachScore ? ryanScore - apeachScore : nil
//    }
//
//    var arrow = n // 현재 쏠 수 있는 화살 갯수
//    var result = Array(repeating: 0, count: 11) // 라이언의 과녁
//    var ans = [[Int]]() // 어피치를 가장 큰 차이로 이길 수 있는 라이언의 과녁 배열
//    var scoreGap = 1 // 점수 차이 (동점이면 어피치 승리이므로 1점에서 시작)
//
//    // dfs를 통한 완전 탐색
//    func dfs(_ index: Int) {
//        // 탈출조건: 마지막 과녁에 도달
//        if index == 11 {
//            result[10] += arrow // 남은 화살은 0점짜리 과녁에 모두 쏘기
//
//            // 라이언이 이기는 경우
//            if let newScoreGap = getScoreGap(ryan: result) {
//                // 점수 차이가 현재까지의 최대 점수 차이와 동일한 경우: ans 배열에 추가
//                if newScoreGap == scoreGap {
//                    ans.append(result)
//                // 점수 차이가 현재까지 최대 점수 차이보다 큰 경우: ans 배열을 덮어 씌우기
//                } else if newScoreGap > scoreGap {
//                    ans = [result]
//                    scoreGap = newScoreGap
//                }
//            }
//
//            // 0점짜리 과녁에 쏜 화살 제거
//            result[10] -= arrow
//            return
//        }
//
//        // 현재 과녁에 0 ~ (현재 남은 화살) 쏘면서 완전 탐색
//        for i in 0...arrow {
//            result[index] = i
//            arrow -= i
//            dfs(index + 1)
//            arrow += i
//            result[index] = 0
//        }
//    }
//
//    dfs(0)
//
//    // 정렬하기: 적은 점수의 과녁에 더 많이 쏜 정답이 앞으로 오도록!
//    ans.sort { a, b in
//        for i in (0..<11).reversed() {
//            if a[i] == b[i] {
//                continue
//            } else {
//                return a[i] > b[i]
//            }
//        }
//        return false
//    }
//
//    return ans.isEmpty ? [-1] : ans[0]
//
//}
//
//print(solution(5, [2,1,1,1,0,0,0,0,0,0,0]))
//print(solution(9, [0,0,1,2,0,1,1,1,1,1,1]))
