//
//  20230519.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/19.
//

//class Node {
//    let index: Int
//    var head: Node?
//    var tail: Node?
//
//    init(index: Int) {
//        self.index = index
//        self.head = nil
//        self.tail = nil
//    }
//}
//
//func solution(_ n:Int, _ k:Int, _ cmd:[String]) -> String {
//
//    var ans = Array(repeating: "O", count: n)
//
//    func up(_ n: Int) {
//        for _ in 0..<n {
//            now = now.head!
//        }
//    }
//
//    func down(_ n: Int) {
//        for _ in 0..<n {
//            now = now.tail!
//        }
//    }
//
//    func close() {
//        stack.append(now)
//        ans[now.index] = "X"
//        now.head?.tail = now.tail
//        now.tail?.head = now.head
//        now = now.tail ?? now.head!
//    }
//
//    func undo() {
//        let before = stack.popLast()!
//        ans[before.index] = "O"
//        before.head?.tail = before
//        before.tail?.head = before
//    }
//
//    var nodes = [Node]()
//
//    for i in 0..<n {
//        let node = Node(index: i)
//        nodes.append(node)
//    }
//
//    nodes[0].tail = nodes[1]
//    for i in 1..<(n - 1) {
//        nodes[i].head = nodes[i - 1]
//        nodes[i].tail = nodes[i + 1]
//    }
//    nodes[n - 1].head = nodes[n - 2]
//
//    var now = nodes[k]
//    var stack = [Node]()
//
//    for cm in cmd {
//        let c = cm.first!
//        if c == "U" {
//            up(Int(cm.split(separator: " ")[1])!)
//        } else if c == "D" {
//            down(Int(cm.split(separator: " ")[1])!)
//        } else if c == "C" {
//            close()
//        } else if c == "Z" {
//            undo()
//        }
//    }
//
//    // .reduce("", +)의 비용이 높다.
//    return ans.joined()
//}
//
//print(solution(8, 2, ["D 2","C","U 3","C","D 4","C","U 2","Z","Z"]))
//print(solution(8, 2, ["D 2","C","U 3","C","D 4","C","U 2","Z","Z","U 1","C"]))
