//
//  20230116 알고리즘 문제 풀이.swift
//  algorithm_study
//
//  Created by JW Moon on 2023/01/16.
//

//struct Queue {
//    private var index: Int = 0
//    private var array: [Int]
//
//    init(array: [Int]) {
//        self.array = array
//    }
//
//    var count: Int {
//        return array.count - index
//    }
//
//    var sum: Int {
//        return array[index..<array.count].reduce(0, +)
//    }
//
//    mutating func push(_ num: Int) {
//        array.append(num)
//    }
//
//    mutating func pop() -> Int? {
//        guard self.count != 0 else { return nil }
//        defer {
//            index += 1
//        }
//        return array[index]
//    }
//}
//
//func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
//
//    var queue1 = Queue(array: queue1)
//    var queue2 = Queue(array: queue2)
//
//    let sum = queue1.sum + queue2.sum
//    guard sum % 2 == 0 else { return -1 }
//    let target = sum / 2
//    let maxAns = queue1.count * queue2.count
//
//    var ans = 0
//
//    while queue1.sum != target {
//        guard ans <= maxAns else { return -1 }
//        if queue1.sum > queue2.sum {
//            guard let popped = queue1.pop() else { return -1 }
//            queue2.push(popped)
//        } else {
//            guard let popped = queue2.pop() else { return -1 }
//            queue1.push(popped)
//        }
//        ans += 1
//    }
//
//    return ans
//}

//print(solution([3, 2, 7, 2], [4, 6, 5, 1]))
//print(solution([1, 2, 1, 2], [1, 10, 1, 2]))

//func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
//    // query를 받아서 회전하는 함수
//    func rotate(_ query: [Int]) -> Int {
//        let r1 = query[0]
//        let c1 = query[1]
//        let r2 = query[2]
//        let c2 = query[3]
//
//        // matrix를 복사해서 회전에 사용
//        var rotated = matrix
//
//        // 회전 대상의 최소값을 저장하는 함수
//        var result = Int.max
//
//        // 회전방향에 따라서 구역을 나누어서 회전
//        for r in r1...r2 {
//            for c in c1...c2 {
//                if r == r1 && (c1 + 1)...c2 ~= c {
//                    rotated[r][c] = matrix[r][c - 1]
//                } else if (r1 + 1)...r2 ~= r && c == c2 {
//                    rotated[r][c] = matrix[r - 1][c]
//                } else if r == r2 && c1...(c2 - 1) ~= c {
//                    rotated[r][c] = matrix[r][c + 1]
//                } else if r1...(r2 - 1) ~= r && c == c1 {
//                    rotated[r][c] = matrix[r + 1][c]
//                } else {
//                    continue //👉 회전하는 영역이 아닐 경우 result 갱신하지 않도록 continue
//                }
//                // 최소값과 비교
//                result = min(rotated[r][c], result)
//            }
//        }
//
//        // 회전된 내용을 원래 matrix에 덮어 씌우기
//        matrix = rotated
//
//        // 최소값 리턴
//        return result
//    }
//
//    // query에 있는 좌표를 그래도 쓰기 위해서 rows와 columns 보다 1 큰 matrix 만들기
//    var matrix = Array(repeating: Array(repeating: 0, count: columns + 1), count: rows + 1)
//    // 최소값들을 저장하는 배열
//    var results = [Int]()
//
//    // matrix 채우기
//    for i in 1..<(rows + 1) {
//        for j in 1..<(columns + 1) {
//            matrix[i][j] = j + (i - 1) * columns
//        }
//    }
//
//    // 쿼리에 맞게 이동하고 최솟값을 배열에 넣기
//    for query in queries {
//        results.append(rotate(query))
//    }
//
//    return results
//}
//
//print(solution(6, 6, [[2,2,5,4],[3,3,6,6],[5,1,6,3]]))
