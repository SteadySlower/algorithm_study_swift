//
//  20230508.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/08.
//

//struct Node {
//    let id: Int
//    let x: Int
//    let y: Int
//
//    var parent: Int?
//    var left: Int?
//    var right: Int?
//}
//
//func solution(_ nodeinfo:[[Int]]) -> [[Int]] {
//
//    var nodes = nodeinfo.enumerated().map { i, v in Node(id: i + 1, x: v[0], y: v[1]) }
//    var dict = [Int:Node]()
//
//    for node in nodes {
//        dict[node.id] = node
//    }
//
//    // 정렬
//
//    func sort(_ lhs: Node, _ rhs: Node) -> Bool {
//        if lhs.y != rhs.y {
//            return lhs.y > rhs.y
//        } else {
//            return lhs.x < rhs.y
//        }
//    }
//
//    nodes.sort(by: sort)
//
//    var before = nodes[0]
//
//    for i in 1..<nodes.count {
//        if nodes[i].y != before.y {
//            if nodes[i].x < before.x {
//                nodes[i].parent = before.id
//                before.left = nodes[i].id
//            } else {
//                nodes[i].parent = before.id
//                before.right = nodes[i].id
//            }
//        } else {
//            if
//        }
//    }
//
//    return []
//}
//
//print(solution([[5,3],[11,5],[13,3],[3,5],[6,1],[1,3],[8,6],[7,2],[2,2]]))
