//
//  20230522.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/05/22.
//

//// 더블 링크드 리스트의 노드
//class Node {
//    let index: Int
//
//    // 각각 앞뒤 노드
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
//    // 노드들의 배열
//    var nodes = [Node]()
//
//    // 노드 만들기
//    for i in 0..<n {
//        let node = Node(index: i)
//        nodes.append(node)
//    }
//
//    // 인덱스 순서대로 head, tail 연결하기
//    nodes[0].tail = nodes[1]
//    for i in 1..<(n - 1) {
//        nodes[i].head = nodes[i - 1]
//        nodes[i].tail = nodes[i + 1]
//    }
//    nodes[n - 1].head = nodes[n - 2]
//
//    // 현재 커서의 위치
//    var now = nodes[k]
//
//    // 삭제한 node는 stack에 저장
//    var stack = [Node]()
//
//    // 정답 배열
//    var ans = Array(repeating: "O", count: n)
//
//    // n칸 만큼 위로
//    func up(_ n: Int) {
//        for _ in 0..<n {
//            now = now.head! //👉 범위를 벗어나는 입력은 없으므로 force unwrapping 가능
//        }
//    }
//
//    // n칸 만큼 아래로
//    func down(_ n: Int) {
//        for _ in 0..<n {
//            now = now.tail! //👉 범위를 벗어나는 입력은 없으므로 force unwrapping 가능
//        }
//    }
//
//    // 해당 칸 삭제
//    func close() {
//        stack.append(now) //👉 실행취소를 대비해서 stack에 넣어둔다
//        ans[now.index] = "X" //👉 정답 배열에 삭제 표시
//
//        // head와 tail를 연결
//        now.head?.tail = now.tail //👉 head의 tail은 now의 tail
//        now.tail?.head = now.head //👉 tail의 head는 now의 head
//
//        // 커서는 아래칸, 없으면 위칸
//        now = now.tail ?? now.head!
//    }
//
//    // 실행 취소
//    func undo() {
//        // stack에서 가장 최근 것 꺼내기
//        let latest = stack.popLast()! //👉 복구할 행이 없을때 실행취소 하는 입력은 없으므로 force unwrapping 가능
//        ans[latest.index] = "O" //👉 복구
//
//        // 원래 head와 tail에 다시 연결
//        latest.head?.tail = latest
//        latest.tail?.head = latest
//    }
//
//    // 명령문 실행
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
//    // 배열을 String으로 바꾸어서 리턴
//    // .reduce("", +)의 비용이 높다.
//    return ans.joined()
//}
//
//print(solution(8, 2, ["D 2","C","U 3","C","D 4","C","U 2","Z","Z"]))
//print(solution(8, 2, ["D 2","C","U 3","C","D 4","C","U 2","Z","Z","U 1","C"]))
