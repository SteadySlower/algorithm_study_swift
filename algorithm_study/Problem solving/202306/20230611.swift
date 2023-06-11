//
//  20230611.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/06/11.
//

//func solution(_ scores:[[Int]]) -> Int {
//
//    // 완호 점수
//    let wanho = scores[0], wanhoScore = wanho.reduce(0, +)
//    
//    // 정렬 기준
//        // 일단 근태 내림차순
//        // 같은 근태의 경우 동평 오름차순
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
//            return -1 // 인센티브 없음
//        }
//
//        // sorted는 근태에 대해서는 내림차순으로 정렬되어 있기 때문에 앞사람보다 무조건 근태는 작거나 같다
//        // 그리고 같은 근태에 대해서는 동평이 오름차순으로 정렬되어 있기 때문에 앞사람보다 크거나 같다.
//            // 따라서 같은 근태의 경우에는 앞사람보다 둘 다 점수가 낮을 가능성은 없다
//        
//        // 따라서 따져볼 것은 다른 근태일 때(= 근태가 낮아질 때) 동평도 낮은 경우를 찾아야 한다는 것
//        
//        // highestPeer는 현재까지 순회한 동평 중에 가장 높은 값
//            // 같은 근태에 대해서는 동평이 내림차순이기 때문에 이 값은 항상 업데이트 됨 (= 인센티브 수령)
//        // 근데 다른 근태가 되면? (= 근태 점수가 낮아지면?)
//            // highestPeer 보다 낮으면 근태도 낮고 동평도 낮은 케이스 (= 인센티브 미수령)
//        if highestPeer <= score[1] {
//            highestPeer = score[1]
//            // 인센티브를 받은 사람 중에서 완호보다 총점이 높은 경우
//            if score.reduce(0, +) > wanhoScore {
//                ans += 1 // 완호보다 순위 올라감
//            }
//        }
//    }
//
//    return ans
//}
//
//print(solution([[2,2],[1,4],[3,2],[3,2],[2,1]]))
