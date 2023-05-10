//
//  20230510.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/10.
//

//func solution(_ board:[[Int]], _ skill:[[Int]]) -> Int {
//
//    var board = board
//
//    for s in skill {
//        let t = s[0], r1 = s[1], c1 = s[2], r2 = s[3], c2 = s[4], d = s[5]
//        if t == 1 {
//            for r in r1...r2 {
//                for c in c1...c2 {
//                    board[r][c] -= d
//                }
//            }
//        } else {
//            for r in r1...r2 {
//                for c in c1...c2 {
//                    board[r][c] += d
//                }
//            }
//        }
//    }
//
//    var ans = 0
//
//    for r in 0..<board.count {
//        for c in 0..<board[0].count {
//            if board[r][c] > 0 { ans += 1 }
//        }
//    }
//
//    return ans
//}

//struct Skill {
//    let type: Int
//    let r1: Int
//    let c1: Int
//    let r2: Int
//    let c2: Int
//    let degree: Int
//
//    func effect(_ r: Int, _ c: Int) -> Int {
//        if (r1...r2).contains(r) && (c1...c2).contains(c) {
//            return type == 1 ? -degree : degree
//        } else {
//            return 0
//        }
//    }
//}
//
//func solution(_ board:[[Int]], _ skill:[[Int]]) -> Int {
//
//    let skills = skill.map { Skill(type: $0[0], r1: $0[1], c1: $0[2], r2: $0[3], c2: $0[4], degree: $0[5]) }
//
//    var ans = 0
//
//    for r in 0..<board.count {
//        for c in 0..<board[0].count {
//            var hp = board[r][c]
//            for skill in skills {
//                hp += skill.effect(r, c)
//            }
//            if hp > 0 { ans += 1 }
//        }
//    }
//
//    return ans
//}
//
//print(solution([[5,5,5,5,5],[5,5,5,5,5],[5,5,5,5,5],[5,5,5,5,5]], [[1,0,0,3,4,4],[1,2,0,2,3,2],[2,1,0,3,1,2],[1,0,1,3,3,1]]))
