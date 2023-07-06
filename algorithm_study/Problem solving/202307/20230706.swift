//
//  20230706.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/06.
//

//enum Animal: Int {
//    case sheep, wolf, empty
//}
//
//class Node {
//    let index: Int
//    var animal: Animal
//    var left: Node?
//    var right: Node?
//
//    init(index: Int, animal: Animal, left: Node? = nil, right: Node? = nil) {
//        self.index = index
//        self.animal = animal
//        self.left = left
//        self.right = right
//    }
//}
//
//
//// TODO: 그냥 DFS로 해보자!
// // postOrder로 하니까 늑대를 만날 때 늑대를 Get할 수 있으면 무조건 get함
//func solution(_ info:[Int], _ edges:[[Int]]) -> Int {
//
//    func postOrder(now: Node?) {
//        guard let now = now else { return }
//        switch now.animal {
//        case .empty:
//            print("just pass node \(now.index)")
//            postOrder(now: now.left)
//            postOrder(now: now.right)
//            break
//        case .sheep:
//            sheep += 1
//            now.animal = .empty
//            print("get sheep in node \(now.index)")
//            postOrder(now: now.left)
//            postOrder(now: now.right)
//            break
//        case .wolf:
//            if sheep == wolf + 1 {
//                print("cannot go to node \(now.index)")
//                return
//            }
//            wolf += 1
//            print("get wolf in node \(now.index)")
//            now.animal = .empty
//            postOrder(now: now.left)
//            postOrder(now: now.right)
//            break
//        }
//    }
//
//    var nodes = [Node]()
//
//    for i in 0..<info.count {
//        nodes.append(Node(index: i, animal: Animal(rawValue: info[i])!))
//    }
//
//    for edge in edges {
//        let parent = edge[0], child = edge[1]
//        if nodes[parent].left == nil {
//            nodes[parent].left = nodes[child]
//        } else {
//            nodes[parent].right = nodes[child]
//        }
//    }
//
//    var sheep = 0
//    var wolf = 0
//    var now = nodes[0]
//
//    for _ in 0..<500 {
//        postOrder(now: nodes[0])
//    }
//
////    while true {
////        let beforeSheep = sheep
////        postOrder(now: nodes[0])
////        if beforeSheep == sheep { break }
////    }
//
//
//    return sheep
//}
//
//print(solution([0,0,1,1,1,0,1,0,1,0,1,1], [[0,1],[1,2],[1,4],[0,8],[8,7],[9,10],[9,11],[4,3],[6,5],[4,6],[8,9]]))
//
