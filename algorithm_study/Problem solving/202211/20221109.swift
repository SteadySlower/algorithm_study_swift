//
//  20221109.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/11/09.
//

//struct Position: Equatable {
//    var x: Int
//    var y: Int
//
//    static func ==(_ lhs: Position, _ rhs: Position) -> Bool {
//        return lhs.x == rhs.x && lhs.y == rhs.y
//    }
//
//    static func <(_ lhs: Position, _ rhs: Position) -> Bool {
//        if lhs.x != rhs.x {
//            return lhs.x < rhs.x
//        } else {
//            return lhs.y < rhs.y
//        }
//    }
//}

//typealias Position = (x: Int, y: Int)
//
//func L(_ p: Position) -> Position {
//    p.x - 1 >= -5 ? (x: p.x - 1, y: p.y) : p
//}
//
//func R(_ p: Position) -> Position {
//    p.x + 1 <= 5 ? (x: p.x + 1, y: p.y) : p
//}
//
//func U(_ p: Position) -> Position {
//    p.y + 1 <= 5 ? (x: p.x, y: p.y + 1) : p
//}
//
//func D(_ p: Position) -> Position {
//    p.y - 1 >= -5 ? (x: p.x, y: p.y - 1) : p
//}
//
//func route(_ from: Position, _ to: Position) -> (Position, Position)? {
//    if from == to {
//        return nil
//    } else if from < to {
//        return (from, to)
//    } else {
//        return (to, from)
//    }
//}
//
//func solution(_ dirs:String) -> Int {
//    let dirs = dirs.map { String($0) }
//
//    var now = (x: 0, y: 0)
//    var routes = [(Position, Position)]()
//
//    for dir in dirs {
//        switch dir {
//        case "L":
//            let new = L(now)
//            let route = route(now, new)
//        case "R":
//        case "U":
//        case "D":
//
//        }
//    }
//
//
//    return 0
//}
/*
 
 0 0 -> -1 0

 y좌표 0으로 동일하니까
 5
 
 x기준 0에서 -1로 가는 길
 
 
 LRUD
 */

//func solution(_ dirs:String) -> Int {
//    func move(_ dir: String) {
//        switch dir {
//        case "L":
//            if x - 1 >= -5 { x -= 1 }
//        case "R":
//            if x + 1 <= 5 { x += 1 }
//        case "U":
//            if y + 1 <= 5 { y += 1 }
//        case "D":
//            if y - 1 >= -5 { y -= 1 }
//        default:
//            return
//        }
//    }
//
//    func checkRoute(_ tempX: Int, _ tempY: Int) {
//        if x == tempX && tempY == y { return }
//
//        if x == tempX {
//            let origin = y < tempY ? y : tempY
//            vRoutes[x + 5][origin + 5] = 1
//        } else {
//            let origin = x < tempX ? x :tempX
//            hRoutes[origin + 5][y + 5] = 1
//        }
//    }
//
//    var hRoutes = Array(repeating: Array(repeating: 0, count: 10), count: 10)
//    var vRoutes = Array(repeating: Array(repeating: 0, count: 10), count: 10)
//    let dirs = dirs.map { String($0) }
//    var x = 0
//    var y = 0
//
//    for dir in dirs {
//        let tempX = x
//        let tempY = y
//        move(dir)
//        checkRoute(tempX, tempY)
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
//
//print(solution("LULLLLLLU"))
