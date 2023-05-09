//
//  20230509.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/09.
//

//var ans = [Node]()
//
//func preOrder(now: Node?) {
//    guard let now = now else { return }
//    ans.append(now)
//    preOrder(now: now.left)
//    preOrder(now: now.right)
//}
//
//func postOrder(now: Node?) {
//    guard let now = now else { return }
//    postOrder(now: now.left)
//    postOrder(now: now.right)
//    ans.append(now)
//}
//
//func inOrder(now: Node?) {
//    guard let now = now else { return }
//    inOrder(now: now.left)
//    ans.append(now)
//    inOrder(now: now.right)
//}

//func levelOrder(now: Node?) {
//    var q = Queue<Node>()
//    q.push(now)
//
//    while !q.isEmpty {
//        let now = q.pop()!
//        ans.append(now)
//        if let left = now.left {
//            q.push(left)
//        }
//        if let right = now.right {
//            q.push(right)
//        }
//    }
//}

//class Node {
//    let index: Int
//    let x: Int
//    let y: Int
//    var left: Node?
//    var right: Node?
//
//    init(index: Int, x: Int, y: Int) {
//        self.index = index
//        self.x = x
//        self.y = y
//    }
//}
//
//
//// nodes는 y 기준 내림차순으로 정렬되어 있는 Node들의 배열
//func makeTree(nodes: [Node]) {
//    // 탈출 조건: 남은 nodes의 갯수가 없거나 1개 = 더 이상 연결할 자식 node가 없음
//    if nodes.count < 2 { return }
//
//    // 현재 nodes에서 root = y좌표가 가장 큰 node
//    let root = nodes[0]
//
//    // 각각 root의 왼쪽, 오른쪽 자식
//    var lefts = [Node]()
//    var rights = [Node]()
//
//    // x 값을 기준으로 왼쪽 자식들과 오른쪽 자식들을 분리
//        // nodes가 y 기준 내림차순이므로 lefts와 rights도 당연히 y기준으로 정렬되어 있음
//    for i in 1..<nodes.count {
//        if nodes[i].x < root.x {
//            lefts.append(nodes[i])
//        } else {
//            rights.append(nodes[i])
//        }
//    }
//
//    // 왼쪽 자식들에서 가장 y값이 높은 것이 left (없으면 nil)
//    root.left = lefts.first
//    // 오른쪽 자식들에서 가장 y값이 높은 것이 right (없으면 nil)
//    root.right = rights.first
//
//    // 양쪽 node들로 다시 tree 만들기
//    makeTree(nodes: lefts)
//    makeTree(nodes: rights)
//}
//
//func solution(_ nodeinfo:[[Int]]) -> [[Int]] {
//
//    func preOrder(now: Node?) {
//        guard let now = now else { return }
//        preAns.append(now)
//        preOrder(now: now.left)
//        preOrder(now: now.right)
//    }
//
//    func postOrder(now: Node?) {
//        guard let now = now else { return }
//        postOrder(now: now.left)
//        postOrder(now: now.right)
//        postAns.append(now)
//    }
//
//    var nodes = [Node]()
//
//    for i in 0..<nodeinfo.count {
//        nodes.append(Node(index: i + 1, x: nodeinfo[i][0], y: nodeinfo[i][1]))
//    }
//
//    // y축 기준 내림차순 정렬
//    nodes.sort { $0.y > $1.y }
//
//    makeTree(nodes: nodes)
//
//    // 각각 전위, 후위 순회 실시
//    var preAns = [Node]()
//    var postAns = [Node]()
//
//    preOrder(now: nodes[0])
//    postOrder(now: nodes[0])
//
//    // 인덱스로만 바꾸어서 출력
//    return [
//        preAns.map { $0.index },
//        postAns.map { $0.index }
//    ]
//}
//
//print(solution([[5,3],[11,5],[13,3],[3,5],[6,1],[1,3],[8,6],[7,2],[2,2]]) == [[7,4,6,9,1,8,5,2,3],[9,6,5,8,1,4,3,2,7]])
