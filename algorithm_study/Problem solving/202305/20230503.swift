//
//  20230503.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/03.
//

//func solution(_ picks:[Int], _ minerals:[String]) -> Int {
//
//    var result = Int.max
//
//    // pickCost[광물][곡괭이]
//    var pickCost = [
//        "diamond": [1, 5, 25],
//        "iron": [1, 1, 5],
//        "stone": [1, 1, 1]
//    ]
//
//    // 완전 탐색
//    func dfs(picks: [Int], now: Int, cost: Int) {
//        // 광물을 다 캐거나, 남은 곡괭이가 없을 때
//        if now == minerals.count || picks.reduce(0, +) == 0 {
//            result = min(result, cost)
//            return
//        }
//
//        // 곡괭이를 3종류 순회
//        for i in 0..<3 {
//            // 곡괭이가 남아 있다면
//            if picks[i] > 0 {
//                // 곡괭이 -1
//                var newPicks = picks
//                newPicks[i] -= 1
//                // 비용 계산
//                var newCost = cost
//                var now = now
//                // 하나의 곡괭이로 5개의 광물
//                for _ in 0..<5 {
//                    // 광물 다 캐면 break
//                    if now == minerals.count { break }
//                    newCost += pickCost[minerals[now]]![i]
//                    now += 1
//                }
//                dfs(picks: newPicks, now: now, cost: newCost)
//            }
//        }
//    }
//
//    dfs(picks: picks, now: 0, cost: 0)
//
//    return result
//}

//func solution(_ picks:[Int], _ minerals:[String]) -> Int {
//
//    // 다이아몬드가 많은 순서대로 정렬하는 함수
//    func sort(_ lhs: [Int], _ rhs: [Int]) -> Bool {
//        if lhs[0] != rhs[0] {
//            return lhs[0] > rhs[0]
//        } else if lhs[1] != rhs[1] {
//            return lhs[1] > rhs[1]
//        } else {
//            return lhs[2] > rhs[2]
//        }
//    }
//
//    // 곡괭이의 갯수만큼 5개씩 광물 묶기
//    var chucks = [[Int]]()
//    var temp = [0, 0, 0] // 각각 다이아, 철, 돌의 갯수
//    let numOfPicks = picks.reduce(0, +) // 곡괭이의 갯수
//
//    // 광물을 temp에 하나씩 담는다
//    for mineral in minerals {
//        // 곡괭이 하나당 5개까지 캘 수 있으므로 5개 묶음이 곡괭이 갯수와 같아지면 break
//        if chucks.count == numOfPicks { break }
//
//        if mineral == "diamond" {
//            temp[0] += 1
//        } else if mineral == "iron" {
//            temp[1] += 1
//        } else {
//            temp[2] += 1
//        }
//
//        // 5개씩 묶었으면 chuck에 넣기
//        if temp.reduce(0, +) == 5 {
//            chucks.append(temp)
//            temp = [0, 0, 0]
//        }
//    }
//
//    // 5로 나누어 떨어지지 않는 마지막 묶음
//    if temp.reduce(0, +) > 0 { chucks.append(temp) }
//
//    // 다이아 > 철 > 돌이 많은 순서대로 정렬
//    chucks.sort(by: sort)
//
//    var result = 0
//    // 곡괭이 배열 복사 (var로)
//    var ps = picks
//    // 각각의 묶음을 캔다
//    for chuck in chucks {
//        // 다이아 곡괭이가 남아 있는 경우
//        if ps[0] > 0 {
//            ps[0] -= 1
//            result += chuck.reduce(0, +)
//        // 철 곡괭이가 남아 있는 경우
//        } else if ps[1] > 0 {
//            ps[1] -= 1
//            result += chuck[0] * 5 + chuck[1] + chuck[2]
//        // 돌 곡괭이가 남아 있는 경우
//        } else if ps[2] > 0 {
//            ps[2] -= 1
//            result += chuck[0] * 25 + chuck[1] * 5 + chuck[2]
//        } else {
//            break
//        }
//    }
//
//    return result
//}
//
//print(solution([1, 3, 2], ["diamond", "diamond", "diamond", "iron", "iron", "diamond", "iron", "stone"]))
//print(solution([0, 1, 1], ["diamond", "diamond", "diamond", "diamond", "diamond", "iron", "iron", "iron", "iron", "iron", "diamond"]))
//print(solution([0,1,0], ["diamond", "iron", "iron", "iron", "iron", "diamond", "diamond", "iron", "iron", "iron"]))
