//
//  20230228.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/02/28.
//

//func isDistanced(_ place: [[String]], _ rc: (Int, Int)) -> Bool {
//
//    func isValid(_ rc: (Int, Int)) -> Bool {
//        (0...4).contains(rc.0) && (0...4).contains(rc.1)
//    }
//
//    func isOkay(_ rc1: (Int, Int), _ rc2: (Int, Int)) -> Bool {
//
//        var manDistance: Int {
//            abs(rc1.0 - rc2.0) + abs(rc1.1 - rc2.1)
//        }
//
//        var isParted: Bool {
//            if rc1.0 == rc2.0 {
//                return place[rc1.0][(rc1.1 + rc2.1) / 2] == "X"
//            } else if rc1.1 == rc2.1 {
//                return place[(rc1.0 + rc2.0) / 2][rc1.1] == "X"
//            } else {
//                return place[rc1.0][rc2.1] == "X" && place[rc2.0][rc1.1] == "X"
//            }
//        }
//
//        if manDistance > 2 {
//            return true
//        } else if isParted {
//            return true
//        } else {
//            return false
//        }
//
//    }
//
//    for i in (-2...2) {
//        for j in (-2...2) {
//            let (nr, nc) = (rc.0 + i, rc.1 + j)
//            if (nr == rc.0 && nc == rc.1 ) || !isValid((nr, nc)) { continue }
//            if place[nr][nc] == "P" && !isOkay(rc, (nr, nc)) {
//                return false
//            }
//        }
//    }
//
//    return true
//}
//
//func solution(_ places:[[String]]) -> [Int] {
//
//    let places = places.map { $0.map { $0.map { String($0) } } }
//    var ans = [Int]()
//
//    for place in places {
//        var flag = true
//        Outerloop: for r in 0..<5 {
//            for c in 0..<5 {
//                if place[r][c] == "P" && !isDistanced(place, (r, c)) {
//                    flag = false
//                    break Outerloop
//                }
//            }
//        }
//        ans.append(flag ? 1 : 0)
//    }
//
//    return ans
//}

//struct Position: Equatable {
//    let r: Int
//    let c: Int
//}
//
//func isDistanced(_ place: [[String]], _ p: Position) -> Bool {
//
//    func isValid(_ p: Position) -> Bool {
//        (0...4).contains(p.r) && (0...4).contains(p.c)
//    }
//
//    func manDistance(_ p1: Position, _ p2: Position) -> Int {
//        abs(p1.r - p2.r) + abs(p1.c - p2.c)
//    }
//
//    func isParted(_ p1: Position, _ p2: Position) -> Bool {
//
//        if p1.r == p2.r {
//            return place[p1.r][(p1.c + p2.c) / 2] == "X"
//        } else if p1.c == p2.c {
//            return place[(p1.r + p2.r) / 2][p1.c] == "X"
//        } else {
//            return place[p1.r][p2.c] == "X" && place[p2.r][p1.c] == "X"
//        }
//
//    }
//
//    for i in (-2...2) {
//        for j in (-2...2) {
//            let np = Position(r: p.r + i, c: p.c + j)
//            if (p == np) || !isValid(np) || place[np.r][np.c] != "P" {
//                continue
//            } else if manDistance(p, np) > 2 || isParted(p, np)  {
//                continue
//            } else {
//                return false
//            }
//        }
//    }
//
//    return true
//}
//
//func solution(_ places:[[String]]) -> [Int] {
//
//    let places = places.map { $0.map { $0.map { String($0) } } }
//    var ans = [Int]()
//
//    for place in places {
//        var flag = true
//        Outerloop: for r in 0..<5 {
//            for c in 0..<5 {
//                if place[r][c] == "P" && !isDistanced(place, Position(r: r, c: c)) {
//                    flag = false
//                    break Outerloop
//                }
//            }
//        }
//        ans.append(flag ? 1 : 0)
//    }
//
//    return ans
//}
//
//print(solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))
