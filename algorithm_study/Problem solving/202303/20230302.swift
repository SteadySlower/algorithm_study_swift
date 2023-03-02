//
//  20230302.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/03/02.
//

//struct Position: Equatable {
//    let r: Int
//    let c: Int
//}
//
//func isDistanced(_ place: [[String]], _ p: Position) -> Bool {
//
//    // 해당 좌표가 5 x 5 행렬 안에 있는지 확인하는 함수 (index out of bound 방지)
//    func isValid(_ p: Position) -> Bool {
//        (0...4).contains(p.r) && (0...4).contains(p.c)
//    }
//
//    // 맨해튼 거리를 구하는 함수
//    func manDistance(_ p1: Position, _ p2: Position) -> Int {
//        abs(p1.r - p2.r) + abs(p1.c - p2.c)
//    }
//
//    // 맨해튼 거리가 2이하인 두 지점 사이에 파티션이 있는지 구하는 함수
//    func isParted(_ p1: Position, _ p2: Position) -> Bool {
//        // 같은 행에 있는 경우
//        if p1.r == p2.r {
//            return place[p1.r][(p1.c + p2.c) / 2] == "X"
//        // 같은 열에 있는 경우
//        } else if p1.c == p2.c {
//            return place[(p1.r + p2.r) / 2][p1.c] == "X"
//        // 대각선으로 있는 경우 (파티션 2개 필요)
//        } else {
//            return place[p1.r][p2.c] == "X" && place[p2.r][p1.c] == "X"
//        }
//
//    }
//
//    // 상하좌우로 2거리만큼 완전탐색
//    for i in (-2...2) {
//        for j in (-2...2) {
//            let np = Position(r: p.r + i, c: p.c + j)
//            // 같은 좌표 or 유효하지 않은 좌표 or 해당 좌표에 사람이 없는 경우
//            if (p == np) || !isValid(np) || place[np.r][np.c] != "P" {
//                continue
//            // 해당 위치가 맨해튼 거리 2보다 크거나, 이미 파티션이 있는 경우
//            } else if manDistance(p, np) > 2 || isParted(p, np)  {
//                continue
//            // 그렇지 않은 경우 (= 거리두기를 지키지 않은 경우)
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
//    // [[String]]을 subscript를 사용하기 좋게 [[[String]]]으로 바꿈
//    let places = places.map { $0.map { $0.map { String($0) } } }
//    var ans = [Int]()
//
//    // 모든 place를 탐색
//    for place in places {
//        var flag = true
//        // 5 x 5 행렬을 탐색
//        Outerloop: for r in 0..<5 {
//            for c in 0..<5 {
//                // 거리두기를 지키지 않은 경우
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

//struct Position: Equatable {
//    let r: Int
//    let c: Int
//}
//
//func isDistanced(_ place: [[String]]) -> Bool {
//
//    // 사람 좌표 배열
//    var persons = [Position]()
//
//    // 완전탐색해서 사람 좌표 구하기
//    for r in 0..<5 {
//        for c in 0..<5 {
//            if place[r][c] == "P" {
//                persons.append(Position(r: r, c: c))
//            }
//        }
//    }
//
//    // 맨해튼 거리를 구하는 함수
//    func manDistance(_ p1: Position, _ p2: Position) -> Int {
//        abs(p1.r - p2.r) + abs(p1.c - p2.c)
//    }
//
//    // 맨해튼 거리가 2이하인 두 지점 사이에 파티션이 있는지 구하는 함수
//    func isParted(_ p1: Position, _ p2: Position) -> Bool {
//        // 같은 행에 있는 경우
//        if p1.r == p2.r {
//            return place[p1.r][(p1.c + p2.c) / 2] == "X"
//        // 같은 열에 있는 경우
//        } else if p1.c == p2.c {
//            return place[(p1.r + p2.r) / 2][p1.c] == "X"
//        // 대각선으로 있는 경우 (파티션 2개 필요)
//        } else {
//            return place[p1.r][p2.c] == "X" && place[p2.r][p1.c] == "X"
//        }
//
//    }
//
//    for p1 in persons {
//        for p2 in persons {
//            // 동일한 좌표이거나 맨해튼 거리가 2보다 큰 경우
//            if p1 == p2 || manDistance(p1, p2) > 2 {
//                continue
//            // 맨해튼 거리가 1인 경우 (= 파티션 칠 수 없음)
//            } else if manDistance(p1, p2) == 1 {
//                return false
//            // 맨해튼 거리가 2인데 파티션이 없는 경우
//            } else if !isParted(p1, p2) {
//                return false
//            }
//        }
//    }
//
//
//    return true
//}
//
//func solution(_ places:[[String]]) -> [Int] {
//
//    // [[String]]을 subscript를 사용하기 좋게 [[[String]]]으로 바꿈
//    let places = places.map { $0.map { $0.map { String($0) } } }
//    var ans = [Int]()
//
//    // 모든 place를 탐색
//    for place in places {
//        ans.append(isDistanced(place) ? 1 : 0)
//    }
//
//    return ans
//}
//
//print(solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))
