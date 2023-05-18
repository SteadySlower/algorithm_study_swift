//
//  20230518.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/18.
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
//
//    var description: String {
//        "index: \(index) head: \(head?.index ?? -1) tail: \(tail?.index ?? -1)"
//    }
//}
//
//func solution(_ n:Int, _ k:Int, _ cmd:[String]) -> String {
//
//    func up(_ n: Int) {
//        for _ in 0..<n {
//            if now.head == nil { break }
//            now = now.head!
//        }
//    }
//
//    func down(_ n: Int) {
//        for _ in 0..<n {
//            if now.tail == nil { break }
//            now = now.tail!
//        }
//    }
//
//    func close() {
//        stack.append(now)
//        if let head = now.head {
//            head.tail = now.tail
//        }
//        if let tail = now.tail {
//            tail.head = now.head
//        }
//        if now.tail != nil {
//            now = now.tail!
//        } else if now.head != nil {
//            now = now.head!
//        }
//    }
//
//    func undo() {
//        guard let before = stack.popLast() else { return }
//        if let head = before.head {
//            head.tail = before
//        }
//        if let tail = before.tail {
//            tail.head = before
//        }
//    }
//
//    var nodes = [Node]()
//
//    for i in 0..<n {
//        let node = Node(index: i)
//        nodes.append(node)
//    }
//
//    for i in 0..<n {
//        if i > 0 {
//            nodes[i - 1].tail = nodes[i]
//        }
//        if i < (n - 1) {
//            nodes[i + 1].head = nodes[i]
//        }
//    }
//
//    var now = nodes[k]
//    var stack = [Node]()
//
//
//    // String.first == "U" -> 이거 비용 비싸다!!!
//    for cm in cmd {
//        let c = cm.split(separator: " ")
//        if c[0] == "U" {
//            up(Int(c[1])!)
//        } else if c[0] == "D" {
//            down(Int(c[1])!)
//        } else if c[0] == "C" {
//            close()
//        } else if c[0] == "Z" {
//            undo()
//        }
//    }
//
//    while now.head != nil {
//        now = now.head!
//    }
//
//    var ans = Array(repeating: "X", count: n)
//
//    while true {
//        ans[now.index] = "O"
//        if now.tail == nil { break }
//        now = now.tail!
//    }
//
//    return ans.reduce("", +)
//}
//
//print(solution(8, 2, ["D 2","C","U 3","C","D 4","C","U 2","Z","Z"]))
//print(solution(8, 2, ["D 2","C","U 3","C","D 4","C","U 2","Z","Z","U 1","C"]))
