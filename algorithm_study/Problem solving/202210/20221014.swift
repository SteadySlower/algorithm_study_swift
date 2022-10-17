//
//  20221014.swift
//  algorithm_study
//
//  Created by JW Moon on 2022/10/17.
//

//// 큐 구현
//struct Queue {
//    private var index: Int = 0
//    private var queue = [Int]()
//
//    var isEmpty: Bool {
//        queue.count == index
//    }
//
//    var count: Int {
//        queue.count - index
//    }
//
//    mutating func push(_ n: Int) {
//        queue.append(n)
//    }
//
//    mutating func pop() -> Int {
//        defer {
//            index += 1
//        }
//        return queue[index]
//    }
//}
//
//// 테스트 케이스 갯수 입력 받기
//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//    // 팀 갯수 입력받기
//    let n = Int(readLine()!)!
//
//    // 자신에게 들어오는 간선 갯수 저장하는 배열 (= 나를 이긴 팀)
//    var indegree = Array(repeating: 0, count: n + 1)
//    // 승패 정보를 저장하는 이차원 배열 (= 간선 행렬)
//    var matrix = Array(repeating: Array(repeating: false, count: n + 1), count: n + 1)
//    let lastYear = readLine()!.split(separator: " ").map { Int(String($0))! }
//
//    // 작년 순위를 받아서 이차원 배열 및 간선 갯수 저장
//        // i는 승자의 index i ~ (n - 1)은 패자의 index
//    for i in 0..<(n - 1) {
//        let winner = lastYear[i]
//        for j in (i + 1)..<n {
//            let loser = lastYear[j]
//            // 승-패 관계를 이차원 배열에 저장하고 들어오는 간선 갯수 저장
//            matrix[winner][loser] = true
//            indegree[loser] += 1
//        }
//    }
//
//    // 순위가 변경된 내용 indegree와 matrix에 반영하기
//    let m = Int(readLine()!)!
//    for _ in 0..<m {
//        let ab = readLine()!.split(separator: " ").map { Int(String($0))! }
//        let a = ab[0], b = ab[1]
//        // 승-패 바꾸고 indegree도 반대로 설정
//        if matrix[a][b] {
//            matrix[a][b] = false
//            matrix[b][a] = true
//            indegree[b] -= 1
//            indegree[a] += 1
//        } else {
//            matrix[b][a] = false
//            matrix[a][b] = true
//            indegree[a] -= 1
//            indegree[b] += 1
//        }
//    }
//
//    // 올해 순위를 저장할 배열
//    var result = [Int]()
//
//    // 위상 정렬 알고리즘을 위한 queue
//    var queue = Queue()
//
//    // indegree가 0인 vertex를 Queue에 넣는다.
//    for i in 1..<(n + 1) {
//        if indegree[i] == 0 {
//            queue.push(i)
//        }
//    }
//
//    // cycle이 생겨서 불가능한 경우 (= 일관성이 없는 정보)
//    var impossible = false
//    // queue에 vertex가 2개 이상 있는 경우 (= 확실한 올해 순위를 만들 수 없는 경우)
//    var moreThanOne = false
//
//    // vertex 갯수 만큼 반복하면서 순위 정하기
//    for _ in 0..<n {
//        if queue.isEmpty {
//            impossible = true
//            break
//        }
//
//        if queue.count > 1 {
//            moreThanOne = true
//            break
//        }
//
//        // 현재 queue에 있는 것
//        let now = queue.pop()
//        result.append(now)
//
//        // now와 연결된 간선 정보를 삭제
//        for j in 1..<(n + 1) {
//            if matrix[now][j] {
//                indegree[j] -= 1
//                // indegree가 0이 되면 queue에 넣는다.
//                if indegree[j] == 0 {
//                    queue.push(j)
//                }
//            }
//        }
//    }
//
//    // 결과 출력
//    if impossible {
//        print("IMPOSSIBLE")
//    } else if moreThanOne {
//        print("?")
//    } else {
//        print(result.map { String($0) }.joined(separator: " "))
//    }
//}
