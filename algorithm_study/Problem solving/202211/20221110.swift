//
//  20221110.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/10.
//

//import Foundation
//
//typealias Position = (x: Int, y: Int)
//
//func solution(_ dirs:String) -> Int {
//    func move(_ p: Position, _ dir: String) -> Position {
//        switch dir {
//        case "L":
//            if p.x > -5 { return (x: p.x - 1, y: p.y) }
//        case "R":
//            if p.x < 5 { return (x: p.x + 1, y: p.y) }
//        case "U":
//            if p.y < 5 { return (x: p.x, y: p.y + 1) }
//        case "D":
//            if p.y > -5 { return (x: p.x, y: p.y - 1) }
//        default:
//            return p
//        }
//        return p
//    }
//
//    func checkRoute(before b: Position, now n: Position) {
//        if b == n { return }
//
//        if b.x == n.x {
//            let y = b.y < n.y ? b.y : n.y
//            vRoutes[n.x + 5][y + 5] = 1
//        } else {
//            let x = b.x < n.x ? b.x : n.x
//            hRoutes[x + 5][b.y + 5] = 1
//        }
//    }
//
//    var hRoutes = Array(repeating: Array(repeating: 0, count: 11), count: 11)
//    var vRoutes = Array(repeating: Array(repeating: 0, count: 11), count: 11)
//    let dirs = dirs.map { String($0) }
//    var now = (x: 0, y: 0)
//
//    for dir in dirs {
//        let before = now
//        now = move(now, dir)
////        print(before, dir, now)
//        checkRoute(before: before, now: now)
//    }
//
//    var ans = 0
//
//    for i in 0..<10 {
//        for j in 0..<10 {
//            if hRoutes[i][j] == 1 { ans += 1 }
//            if vRoutes[i][j] == 1 { ans += 1 }
//        }
//    }
//
//    return ans
//}

//func solution(_ dirs:String) -> Int {
//    // dir 별 좌표 변화 저장
//    let moves = [
//        "L": (-1, 0),
//        "R": (1, 0),
//        "U": (0, 1),
//        "D": (0, -1),
//    ]
//
//    // 지난 길을 저장할 Set (중복 x)
//    var routes = Set<String>()
//    let dirs = dirs.map { String($0) }
//
//    // 처음 위치 = 원점
//    var x = 0, y = 0
//
//    for dir in dirs {
//        // 이동을 하고
//        let nx = x + moves[dir]!.0, ny = y + moves[dir]!.1
//        // 이동을 한 위치가 주어진 영역 안이라면
//        if (-5...5) ~= nx && (-5...5) ~= ny {
//            // 지난 길을 저장하는데 "원위치 -> 이동위치", "이동위치 -> 원위치"의 2가지로 저장한다.
//            routes.insert("\(x)\(y)\(nx)\(ny)")
//            routes.insert("\(nx)\(ny)\(x)\(y)")
//            // 그리고 현재 위치를 변경
//            x = nx
//            y = ny
//        }
//    }
//
//    // "원위치 -> 이동위치", "이동위치 -> 원위치"의 2가지로 저장했으므로 2를 나누어 준다.
//    return routes.count / 2
//}
//
//print(solution("ULURRDLLU"))
