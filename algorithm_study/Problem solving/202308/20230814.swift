//
//  20230814.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/08/14.
//

//struct Queue<T> {
//    private var index = 0
//    private var data = [T]()
//
//    var isEmpty: Bool {
//        data.count == index
//    }
//
//    mutating func push(_ element: T) {
//        data.append(element)
//    }
//
//    mutating func pop() -> T {
//        defer {
//            index += 1
//        }
//        return data[index]
//    }
//}
//
//let directions = [
//    (-1, 0, "u"),
//    (1, 0, "d"),
//    (0, -1, "l"),
//    (0, 1, "r"),
//]
//
//
//// 이거 시간초과 남: 일단 최단 경로를 찾고 나서 맨 처음 지점에서 사전 순으로 가장 빠른 왔다갔다 찾아야 함
//func solution(_ n:Int, _ m:Int, _ x:Int, _ y:Int, _ r:Int, _ c:Int, _ k:Int) -> String {
//
//    func isValid(_ a: Int, _ b: Int) -> Bool {
//        return (0..<n).contains(a) && (0..<m).contains(b)
//    }
//
//    var queue = Queue<(Int, Int, String)>()
//    queue.push((x - 1, y - 1, ""))
//
//    var ans = [String]()
//
//    while !queue.isEmpty {
//        let now = queue.pop()
//        let a = now.0, b = now.1, h = now.2
//        if h.count == k {
//            if a == r - 1 && b == c - 1 {
//                ans.append(h)
//            }
//            continue
//        }
//        for d in directions {
//            let na = a + d.0, nb = b + d.1, nh = h + d.2
//            if isValid(na, nb) {
//                queue.push((na, nb, nh))
//            }
//        }
//    }
//
//    return ans.sorted().first ?? "impossible"
//}
//
//print(solution(3, 4, 2, 3, 3, 1, 5))
//print(solution(2, 2, 1, 1, 2, 2, 2))
//print(solution(3, 3, 1, 2, 3, 3, 4))
