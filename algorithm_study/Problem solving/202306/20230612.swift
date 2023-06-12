//
//  20230612.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/12.
//

//func solution(_ scores:[[Int]]) -> Int {
//
//    // 완호 점수와 총점
//    let wanho = scores[0], wanhoScore = wanho.reduce(0, +)
//
//    // 정렬 하기: 근태 내림차순, 같은 근태의 경우 동평 오름차순
//    var sorted = scores.sorted(by: { s1, s2 in
//        if s1[0] != s2[0] {
//            return s1[0] > s2[0]
//        } else {
//            return s1[1] < s2[1]
//        }
//    })
//
//    // 완호의 순위 (1등에서 시작하고 점수 높은 사람 나올 때마다 +1)
//    var ans = 1
//    // 지금까지 순회한 동평 중에 가장 높은 값
//    var highestPeer = 0
//
//    for score in sorted {
//        // 완호가 어떤 사람보다 두 점수 모두 떨어지는 경우
//        if score[0] > wanho[0] && score[1] > wanho[1] {
//            return -1 // 완호 인센티브 없음
//        }
//
//        // 최대 동평값을 업데이트 = 인센티브 받을 수 있음
//        if highestPeer <= score[1] {
//            highestPeer = score[1]
//            // 인센티브를 받은 사람 중에서 완호보다 총점이 높은 경우
//            if score.reduce(0, +) > wanhoScore {
//                ans += 1 // 완호 순위 밀림
//            }
//        }
//    }
//
//    return ans
//}
//
//print(solution([[2,2],[1,4],[3,2],[3,2],[2,1]]))
