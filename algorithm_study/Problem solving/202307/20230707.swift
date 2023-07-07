//
//  20230707.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/07/07.
//

//struct Queue<T> {
//    var index = 0
//    var array = [T]()
//
//    var isEmpty: Bool {
//        index == array.count
//    }
//
//    mutating func push(_ t: T) {
//        array.append(t)
//    }
//
//    mutating func pop() -> T {
//        defer {
//            index += 1
//        }
//        return array[index]
//    }
//}
//
//enum Animal: Int {
//    case sheep, wolf, empty
//}
//
//class Node {
//    let index: Int
//    var animal: Animal
//
//    var parent: Node? = nil
//    var left: Node? = nil
//    var right: Node? = nil
//
//    init(_ index: Int, _ value: Int) {
//        self.index = index
//        self.animal = Animal(rawValue: value)!
//    }
//
//}
//
//func solution(_ info:[Int], _ edges:[[Int]]) -> Int {
//
//    var nodes = [Node]()
//
//    for i in 0..<info.count {
//        nodes.append(Node(i, info[i]))
//    }
//
//    for edge in edges {
//        let parent = nodes[edge[0]], child = nodes[edge[1]]
//        if parent.left == nil {
//            parent.left = child
//            child.parent = parent
//        } else {
//            parent.right = child
//            child.parent = parent
//        }
//    }
//
//    func levelOrder(now: Node?) {
//        guard let now = now  else { return }
//        var q = Queue<Node>()
//        q.push(now)
//
//        while !q.isEmpty {
//            let now = q.pop()
//
//            if now.animal == .sheep {
//
//                var wolfCost = 0
//                var parent = now.parent
//                var parents = [Node]()
//                var flag = false
//
//                while let p = parent,
//                    p.animal == .wolf {
//                    wolfCost += 1
//                    parents.append(p)
//                    parent = p.parent
//                    if sheep == wolf + wolfCost { flag = true; break }
//                }
//
//                if !flag {
//                    sheep += 1
//                    now.animal = .empty
//                    wolf += wolfCost
//                    parents.forEach { p in
//                        p.animal = .empty
//                    }
//                }
//
//
//            }
//
//            if let left = now.left {
//                q.push(left)
//            }
//
//            if let right = now.right {
//                q.push(right)
//            }
//        }
//    }
//
//    var sheep = 0
//    var wolf = 0
//
//    levelOrder(now: nodes[0])
//
//
//    return sheep
//}
//
//print(solution([0,0,1,1,1,0,1,0,1,0,1,1], [[0,1],[1,2],[1,4],[0,8],[8,7],[9,10],[9,11],[4,3],[6,5],[4,6],[8,9]]))
//print(solution([0,1,0,1,1,0,1,0,0,1,0], [[0,1],[0,2],[1,3],[1,4],[2,5],[2,6],[3,7],[4,8],[6,9],[9,10]]))
